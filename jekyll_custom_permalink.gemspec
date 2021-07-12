# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll_custom_permalink/version"

Gem::Specification.new do |spec|
  spec.name        = "jekyll_custom_permalink"
  spec.version     = JekyllCustomPermalink::VERSION
  spec.author      = "Niklas Eicker"
  spec.email       = ["hello@nikl.me"]
  spec.licenses    = ["MIT"]
  spec.homepage    = "https://github.com/NiklasEi/jekyll_custom_permalink"
  spec.summary     = "Jekyll plugin allowing usage of custom Front Matter in the `permalink` setting of collections."
  spec.description = "Jekyll plugin allowing usage of custom Front Matter in the `permalink` setting of collections."

  spec.files         = [*Dir["lib/**/*.rb"], "README.md", "LICENSE.md"]
  spec.test_files    = [*Dir["spec/*.rb"]]
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata = {
        "bug_tracker_uri"   => "https://github.com/NiklasEi/jekyll_custom_permalink/issues",
        "documentation_uri" => "https://github.com/NiklasEi/jekyll_custom_permalink",
        "homepage_uri"      => "https://github.com/NiklasEi/jekyll_custom_permalink",
        "source_code_uri"   => "https://github.com/NiklasEi/jekyll_custom_permalink",
        "changelog_uri"     => "https://github.com/NiklasEi/jekyll_custom_permalink/blob/master/changelog.md"
    }
  end

  spec.required_ruby_version = ">= 1.9.3"
  spec.add_dependency "activesupport", ">= 6.1.4"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "bundler", "~> 1.6"
end
