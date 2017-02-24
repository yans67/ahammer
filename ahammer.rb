#!usr/bin/env ruby
# 从当前面目录引入
$LOAD_PATH << '.'

require "optParse"
require "version"
# hash，记录 options 中的命令
options = {}

# 实例化 optParse 并且对其操作
optParser = OptionParser.new do |opts|
    opts.banner = "Usage:"
    opts.separator  "   ahammer [-scheme <schemeName>] [-configuration <configurationName>] [-dederivedDataPath <absoultPath>]"
    opts.separator  "   ahammer [-workspace <workspaceName>] [-scheme <schemeName>] [-configuration <configurationName>] [-dederivedDataPath <absoultPath>]"
    opts.separator  "   ahammer -list"
    opts.separator  "   ahammer -version"

    opts.on("-v","--version","print version") do
       puts Version::VERSION
    end
    opts.on("-h","--help","commands help") do
        puts optinos
    end
     opts.on("-b","--build","build project") do
        puts 
    end
end

optParser.parse!