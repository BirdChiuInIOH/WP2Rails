class PagesController < ApplicationController
    include DataLoader

    before_action :set_talks, only: [
      :index, :talks, :talks_show, :overseas, :press, :events, :about, :how_to_apply_usa
    ]

    # https://ioh.tw/
    def index
    end

    def talks
      @talks_filter = load_talks_filter
    end

    def talks_show
    end

    def how_to_apply_usa
      @talks = @talks.reject{ |talk| talk[:advice].blank? }

      apply_schedules = load_apply_schedules
      @usa_apply_schedules = apply_schedules.select { |schedule| schedule[:country] == 'usa' }.sort { |a, b| a[:index] <=> b[:index]}
      @usa_cities = load_how_to_apply[:usa][:country_map]
    end

    # https://ioh.tw/升大學全攻略/
    def overseas
    end

    def guides
      @lecturers = load_lecturers
    end

    # https://ioh.tw/升大學全攻略-考試準備-學測指南/?src=navigate_180921_1
    def reciprocal
    end

    # https://ioh.tw/news/
    def news
      @news = load_news
    end

    def articles
      @news = load_news
      @lecturers = load_lecturers
    end

    # https://ioh.tw/department_guide
    def taiwan_departments
      # 依 18 學群瀏覽
      @colleges = load_18_colleges
      # Generate id
      @colleges = @colleges.map do |college|
        college.merge(id: SecureRandom.uuid)
      end

      # 依照學校瀏覽
      # types: ['PUBLIC_UNIVERSITY', 'PRIVATE_UNIVERSITY', 'PUBLIC_TECHNOLOGY_UNIVERSITY', 'PRIVATE_TECHNOLOGY_UNIVERSITY', 'TECHNOLOGY_ACADEMY', 'MILITARY']
      @schools = load_taiwan_schools
      @public_schools = @schools.select{|school| school[:type] == 'PUBLIC_UNIVERSITY'}.map do |school|
        school.merge(id: SecureRandom.uuid)
      end
      @private_schools = @schools.select{|school| school[:type] == 'PRIVATE_UNIVERSITY'}.map do |school|
        school.merge(id: SecureRandom.uuid)
      end
      @public_technology_schools = @schools.select{|school| school[:type] == 'PUBLIC_TECHNOLOGY_UNIVERSITY'}.map do |school|
        school.merge(id: SecureRandom.uuid)
      end
      @private_technology_schools = @schools.select{|school| school[:type] == 'PRIVATE_TECHNOLOGY_UNIVERSITY'}.map do |school|
        school.merge(id: SecureRandom.uuid)
      end
      @military_schools = @schools.select{|school| school[:type] == 'MILITARY'}.map do |school|
        school.merge(id: SecureRandom.uuid)
      end
      @technology_academy_schools = @schools.select{|school| school[:type] == 'TECHNOLOGY_ACADEMY'}.map do |school|
        school.merge(id: SecureRandom.uuid)
      end


      # 依照地區瀏覽
      @areas = ['台北', '新北', '桃園', '新竹苗栗', '台中南投', '彰化雲嘉', '台南', '高屏', '基宜花東', '外島']
      # @taipei_schools = @schools.select{|school| school[:area] == '台北'}.map do |school|
      #   school.merge(id: SecureRandom.uuid)
      # end
      # @new_taipei_schools = @schools.select{|school| school[:area] == '新北'}.map do |school|
      #   school.merge(id: SecureRandom.uuid)
      # end
      # @taoyuan_taipei_schools = @schools.select{|school| school[:area] == '桃園'}.map do |school|
      #   school.merge(id: SecureRandom.uuid)
      # end
      # @xinzu_miaoli_schools = @schools.select{|school| school[:area] == '新竹苗栗'}.map do |school|
      #   school.merge(id: SecureRandom.uuid)
      # end
      # @taizhong_nanto_schools = @schools.select{|school| school[:area] == '台中南投'}.map do |school|
      #   school.merge(id: SecureRandom.uuid)
      # end
      # @zhanghua_yunjia_schools = @schools.select{|school| school[:area] == '彰化雲嘉'}.map do |school|
      #   school.merge(id: SecureRandom.uuid)
      # end
      # @tainan_schools = @schools.select{|school| school[:area] == '台南'}.map do |school|
      #   school.merge(id: SecureRandom.uuid)
      # end
      # @gaopin_schools = @schools.select{|school| school[:area] == '高屏'}.map do |school|
      #   school.merge(id: SecureRandom.uuid)
      # end
      # @jilong_huadong_schools = @schools.select{|school| school[:area] == '基宜花東'}.map do |school|
      #   school.merge(id: SecureRandom.uuid)
      # end
      # @other_schools = @schools.select{|school| school[:area] == '外島'}.map do |school|
      #   school.merge(id: SecureRandom.uuid)
      # end
    end

    def press
      @press = load_press
    end

    def teams
      @teams = load_teams
    end

    def events
    end

    def about
    end

  private

    def set_talks
      @talks = load_talks
    end
end
