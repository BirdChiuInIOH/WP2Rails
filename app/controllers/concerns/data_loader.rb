module DataLoader
  def load_press_data
    load_data_from_yaml('press.yml')
  end

  def load_talks_filter
    load_data_from_yaml('talks_filter.yml')
  end

  def load_talks_data
    load_data_from_yaml('talks.yml')
  end

  def load_team_data
    load_data_from_yaml('team.yml')
  end

  private

    def load_data_from_yaml(filename)
      data = YAML.load(File.read(Rails.root.join('app', 'datas', filename)))

      if data.is_a? Array
        data.map(&:with_indifferent_access)
      elsif data.is_a? Hash
        data.with_indifferent_access
      else
        data
      end
    end
end
