#!ust/bin/env ruby
module Abc

  class Error < StandardError; end
  class NilOutputError < Error; end
  
  class << self
    def getInfo
      output = `xcodebuild -list`
      raise Error.new $1 if /^xcodebuild\: error\: (.+)$/ === output

      return nil unless /\S/ === output

      lines = output.split(/\n/)
      info, group = {}, nil

      info[:project] = lines.shift.match(/\"(.+)\"\:/)[1] rescue nil

      lines.each do |line|
        if /\:$/ === line
          group = line.strip[0...-1].downcase.gsub(/\s+/, '_')
          info[group] = []
          next
        end

        unless group.nil? or /\.$/ === line
          info[group] << line.strip
        end
      end

      info.each do |group, values|
        next unless Array === values
        values.delete("") and values.uniq!
      end
      return info 
      # puts info
    end
  end
  # self.getInfo()
end
