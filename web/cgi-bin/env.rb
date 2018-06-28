#!/usr/bin/env ruby
# encoding: utf-8
require 'open-uri'
require 'xml/xslt'

if ENV['SERVER_NAME'] == 'cgi.u.tsukuba.ac.jp'
	$CGI_SCRIPTS = 'http://' + ENV['SERVER_NAME'] + '/~s1611442/UT_only/ML'
	# $CGI_SCRIPTS = "http://#{ENV['SERVER_NAME']/~s1611442/UT_only/ML}"
	$STATIC_FILES = 'http://www.u.tsukuba.ac.jp' + '/~s1611442/UT_only/ML'
elsif ENV['SERVER_NAME'] == 'localhost'
	$CGI_SCRIPTS = 'http://' + ENV['SERVER_NAME'] + ':' + ENV['SERVER_PORT'] + '/cgi-bin'
	$STATIC_FILES = 'http://' + ENV['SERVER_NAME'] + ':' + ENV['SERVER_PORT']
end
$BOOK_LIST = $STATIC_FILES + '/data/booklist.xml'
$KEYWORDS = $STATIC_FILES + '/data/keywords.xml'
$RELATIONS = $STATIC_FILES + '/data/relations.xml'