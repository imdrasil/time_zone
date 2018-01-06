#!/usr/bin/env ruby

# Original source: https://github.com/tzinfo/tzinfo-data/blob/master/Rakefile

require_relative "reader"
require_relative "scm"

BASE_DIR = File.dirname(File.dirname(__FILE__))
LIB_DIR = File.join(BASE_DIR, 'lib')
BUILD_TZ_MODULES_DIR = File.join(BASE_DIR, '.build_tz_modules')
DATA_DIR = File.join(BASE_DIR, 'data')
DATA_OUTPUT_DIR = File.join(BASE_DIR, 'src', 'time_zone', 'data')

# Read the TZ database files in the data directory and produce TZInfo::Data Ruby modules
def build_tz_modules
  FileUtils.mkdir_p(BUILD_TZ_MODULES_DIR)
  begin  
    p = TZInfo::Data::TZDataParser.new(DATA_DIR, BUILD_TZ_MODULES_DIR)
    p.execute
    
    scm = Scm.create(BASE_DIR)
    
    ['indexes', 'definitions'].each do |dir|
      puts File.join(BUILD_TZ_MODULES_DIR, dir)
      puts File.join(DATA_OUTPUT_DIR, dir)
      scm.sync(File.join(BUILD_TZ_MODULES_DIR, dir), File.join(DATA_OUTPUT_DIR, dir))
    end
  ensure
    FileUtils.rm_rf(BUILD_TZ_MODULES_DIR)
  end
end

# Rebuild the Crystal module for a single zone specified by the second argument
def build_tz_module(zone)
  p = TZInfo::Data::TZDataParser.new(DATA_DIR, DATA_OUTPUT_DIR)
  p.generate_countries = false
  p.only_zones = [zone]
  p.execute
end

# Rebuild the countries index
def build_countries
  p = TZInfo::Data::TZDataParser.new(DATA_DIR, DATA_OUTPUT_DIR)
  p.generate_countries = true
  p.generate_zones = false
  p.execute
end

case ARGV[0]
when "build_tz_modules"
  build_tz_modules
when "build_tz_module"
  build_tz_module(ARGV[1])
when "build_countries"
  build_countries
else
  raise "Unknown command"
end