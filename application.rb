# $:.unshift File.expand_path("../lib", __FILE__)
$:.unshift File.join(File.dirname(__FILE__), "lib")
$:.unshift File.join(File.dirname(__FILE__))

require 'rubygems'
require 'bundler/setup'
require 'vanilla'

require 'redcarpet_renderer'

# This is your application subclass.
class Application < Vanilla::App
end

Application.configure do |config|
  # The root directory of the application; normally the directory this 
  # file is in.
  config.root = File.dirname(File.expand_path(__FILE__))

  # You can partition your snips into subdirectories to keep things tidy.
  # This doesn't affect their URL structure on the site (everything is 
  # flat).
  #
  # You should ensure that the system soup is at the bottom of this list
  # unless you really know what you are doing.
  config.soups = [
    "soups/base",
    "soups/system"
  ]

  # This is a dumping ground of ideas at the moment
  #
  config.soups << "soups/extras"
  
  # Splendorr added these soups:
  config.soups << "soups/awn"
  config.soups << "soups/awn/weeklies"

  # If you don't want the tutorial on your site, remove this and delete the directory
  # config.soups << "soups/tutorial"

  # This is a dumping ground of ideas at the moment
  #
  # config.soups << "soups/extras"

  # The snip to render on requests to "/". This defaults to "start"
  #
  config.root_snip = "recents"

  # You can register additional renderer classes, to be used with snips
  # with the given extensions or 'render_as' attributes
  #
  # config.renderers[:awesome] = My::Custom::RendererClass
  
  config.renderers[:redcarpet] = Vanilla::Renderers::Redcarpet
  config.renderers[:idontreadpoetry] = Vanilla::Renderers::RedcarpetNoPo
end