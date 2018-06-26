#!/usr/bin/env ruby
# encoding: utf-8
require_relative 'env'
require 'cgi'
print "Content-Type: text/html\n\n"
ENV.each{|key,value|
    print '[',key,'] '
    print value
    print "<br>\n"
}