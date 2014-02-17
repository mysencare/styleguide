require 'bundler/setup'
require 'rack-fontserve'
Rack::Fontserve.set :fonts_path, './public/fonts'
run Rack::Fontserve

use Rack::Static,
  :urls => ["/images", "/js", "/css", "/fonts"],
  :root => "public"

require 'rack-server-pages'
run Rack::ServerPages
