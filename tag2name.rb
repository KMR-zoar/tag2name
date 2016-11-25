#!/usr/bin/env ruby
# coding: utf-8

require 'bundler'
Bundler.require

def getTaginfo(file)
   Mp3Info.open(file) do |mp3|
      title = mp3.tag2.TIT2
      artist = mp3.tag2.TPE1
      tag = [artist, title]
      return tag
   end
end

Dir.chdir(ARGV[0])

files=Dir.glob("*.mp3")

files.each do |file|
   tag = getTaginfo(file)
   name = "#{tag[0]}／#{tag[1]}.mp3"
   FileUtils.cp file, name
end
