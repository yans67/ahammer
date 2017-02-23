#!usr/bin/env ruby
#用于执行 xcodebuild 打包命令

# 1. 清除编译残留的目录
# xcodebuild clean

# 2. 编译成 app 包，
# 指定 dederivedDataPath，生成 build 路径，不指定不生成
# 指定 configuration，使用 release，不指定生成 Debug 模式
# 指定 scheme 来代替 target，所以 target 最好跟 scheme 相同

# xcodebuild build -scheme demo -sdk iphoneos -configuration Release -derivedDataPath build

puts 'xcodebuild build'
# 3. 将 app 包打包成 ipa
# xcrun -sdk iphoneos PackageApplication -v path -o path/haha.ipa