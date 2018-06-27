#!/usr/bin/env ruby
# encoding: utf-8
if ENV['SERVER_NAME'] == 'cgi.u.tsukuba.ac.jp'
	$CGI_SCRIPTS = ENV['SERVER_NAME'] + '/~s1611442/UT_only/ML'
	$STATIC_FILES = 'www.u.tsukuba.ac.jp' + '/~s1611442/UT_only/ML'
elsif ENV['SERVER_NAME'] == 'localhost'
	$CGI_SCRIPTS = ENV['SERVER_NAME'] + ':' + ENV['SERVER_PORT'] + '/cgi-bin'
	$STATIC_FILES = ENV['SERVER_NAME'] + ':' + ENV['SERVER_PORT']
end