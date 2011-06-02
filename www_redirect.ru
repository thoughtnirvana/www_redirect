#!/usr/bin/env ruby
require 'rack'

app = proc do |env|
  [301, {Location: "http://www.#{env['HTTP_HOST']}"}, []]
end
run app
