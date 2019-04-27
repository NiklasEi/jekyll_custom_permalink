module JekyllCustomPermalink
  autoload :VERSION, 'jekyll_custom_permalink/version.rb'

  class CustomPermalinkError < StandardError; end
  class CustomPermalinkSetupError < CustomPermalinkError; end
end

require 'jekyll_custom_permalink/custom_permalink.rb'