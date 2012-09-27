#!/usr/bin/ruby
require "./tools.rb"
include Tools
#Test user logic

describe Tools do
  it "Test get config's rpc host!" do
    rpc_host = get_config("./test.yaml")["server"]["rpc_host"]
    rpc_host.should  == "tcp://127.0.0.1:7000"
  end
end