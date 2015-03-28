require "seo/version"
require 'seo/tag_helper'

module Seo
  include Seo::TagHelper
end

ActionView::Base.send :include, Seo

