module DataLoader
  def load_press_data
    load_data_from_yaml('press.yml')
  end

  def load_talks_filter
    load_data_from_yaml('talks_filter.yml')
  end

  private

    def load_data_from_yaml(filename)
      YAML.load(File.read(Rails.root.join('app', 'datas', filename))).map(&:with_indifferent_access)
    end
end
