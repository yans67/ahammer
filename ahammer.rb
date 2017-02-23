#!usr/bin/env ruby
require "optParse"

# hash，记录 options 中的命令
options = {}

# 实例化 optParse 并且对其操作
optParser = OptionParser.new do |opts|
    opts.banner = "Usage:"
    opts.separator  "   ahammer [-scheme <schemeName>] [-configuration <configurationName>] [-dederivedDataPath <absoultPath>]"
    opts.separator  "   ahammer [-workspace <workspaceName>] [-scheme <schemeName>] [-configuration <configurationName>] [-dederivedDataPath <absoultPath>]"
    opts.separator  "   ahammer -list"
    opts.separator  "   ahammer -version"

    opts.on_tail("-v","--version","print version") do
        puts "1.1"
        exit
    end
    
end

optParser.parse!