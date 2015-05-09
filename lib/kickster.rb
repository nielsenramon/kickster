dir = File.dirname(__FILE__)
$LOAD_PATH.unshift dir unless $LOAD_PATH.include?(dir)

require "kickster/generator"

module Kickster
  kickster_path = File.expand_path("./", __FILE__)
end
