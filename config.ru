require "rubygems"
require "bundler"

Bundler.require

require "./fever_api"
map "/stringer/fever" do
  run FeverAPI::Endpoint
end

require "./app"
map "/stringer" do
  run Stringer
end
