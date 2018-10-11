module DataLoader
  def load_press
    load_yaml_file('press')
  end

  def load_talks_filter
    load_yaml_file('talks_filter')
  end

  def load_talks
    load_yaml_file('talks')
  end

  def load_teams
    load_yaml_file('team')
  end

  def load_18_colleges
    load_yaml_file('18_colleges')
  end

  def load_taiwan_schools
    load_yaml_file('taiwan_schools')
  end

  def load_lecturers
    load_yaml_file('lecturers')
  end

  def load_news
    load_yaml_file('news')
  end

  private

    def load_yaml_file(filename)
      data = YAML.load(File.read(Rails.root.join('app', 'datas', "#{filename}.yml")))

      if data.is_a? Array
        data.map(&:with_indifferent_access)
      elsif data.is_a? Hash
        data.with_indifferent_access
      else
        data
      end
    end
end
