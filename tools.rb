#!/usr/bin/ruby

require "yaml"
require "sequel"
YAML::ENGINE.yamler = 'syck'

#Tools Module for this!
module Tools
  
  #Get config by file.
  def get_config config_file
    return YAML::load File.open config_file
  end
  
  def get_db 
  	#Get pg data source.
  	Sequel.connect('postgres://postgres:dev@localhost/life_dev') 
  end

end
