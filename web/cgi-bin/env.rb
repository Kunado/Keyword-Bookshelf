#!/usr/bin/env ruby
# encoding: utf-8
if ENV['SERVER_NAME'] == 'cgi.u.tsukuba.ac.jp'
	$rootURL = ENV['SERVER_NAME'] + '/~s1611442/UT_only/ML'
else
	$rootURL = ENV['SERVER_NAME'] + ':' + ENV['SERVER_PORT'] + '/cgi-bin/'
end