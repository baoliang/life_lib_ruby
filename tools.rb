#!/usr/bin/ruby

require "yaml"
YAML::ENGINE.yamler = 'syck'

#Tools Module for this!
module Tools
  
  #Get config by file.
  def get_config config_file
    return YAML::load File.open config_file
  end
  
end
