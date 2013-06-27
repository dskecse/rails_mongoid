# Load application configuration
require 'ostruct'
require 'yaml'

config = begin
  YAML.load_file("#{ Rails.root }/config/app_config.yml")
rescue Errno::ENOENT
  {}
end

AppConfig = OpenStruct.new(config[Rails.env])
