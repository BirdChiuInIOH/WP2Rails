class PagesController < ApplicationController
    include DataLoader

    before_action :set_talks, only: [
      :index, :talks, :talks_show, :talks_experience, :talks_how_to_apply, :overseas, :press, :events, :about, :how_to_apply_usa, :guides
    ]

    # https://ioh.tw/
    def index
      @news = load_news
    end

    # https://ioh.tw/talks/)
    def talks
      @talks_filter = load_talks_filter
    end

    # https://ioh.tw/talks/香港教育大學英語教育系-彭于榛-barbie-peng-ov-study-bde-hk/
    def talks_show
    end

    def talks_experience
    end

    def talks_how_to_apply
    end

    # https://ioh.tw/howtoapply-usa
    def how_to_apply_usa
      @talks = @talks.reject{ |talk| talk[:advice].blank? }

      apply_schedules = load_apply_schedules
      @usa_apply_schedules = apply_schedules.select { |schedule| schedule[:country] == 'usa' }.sort { |a, b| a[:index] <=> b[:index]}
      @usa_cities = load_how_to_apply[:usa][:country_map]
    end

    # https://ioh.tw/overseas1
    def overseas
    end

    # https://ioh.tw/升大學全攻略
    def guides
      @lecturers = load_lecturers
      @news = load_news
    end

    # https://ioh.tw/升大學全攻略-考試準備-學測指南/?src=navigate_180921_1
    def reciprocal
    end

    # https://ioh.tw/news/
    def news
      @news = load_news
    end

    # https://ioh.tw/ioharticles-香港讀大學-申請香港的大學
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
    end

    # https://ioh.tw/%E5%AA%92%E9%AB%94%E5%A0%B1%E5%B0%8E/
    def press
      @press = load_press
    end

    # https://ioh.tw/team/
    def teams
      @teams = load_teams
    end

    # https://ioh.tw/ioh現場講座
    def events
    end

    # https://ioh.tw/about
    def about
    end

  private

    def set_talks
      @talks = load_talks
    end
end
