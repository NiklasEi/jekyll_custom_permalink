# Jekyll custom permalink

[![Gem Version](https://badge.fury.io/rb/jekyll_custom_permalink.svg)](https://badge.fury.io/rb/jekyll_custom_permalink)

This Jekyll plugin allows you to use custom Front Matter in the `permalink` setting of collections.

## Installation

Add the plugin to your site's Gemfile:
```ruby
group :jekyll_plugins do
  # your other jekyll plugins...
  gem 'jekyll_custom_permalink', '~> 0.0'
end
```

Then run
```bash
$ bundle install
```

## Usage

Lets assume that you have some options for your collection "projects" defined in `_config`:
```yml
collections:
  projects:
    output: true
    permalink: projects/:title/
```

You would like to use custom Front Matter in the paths of your projects. For example, it would be great to be able to include the Front Matter variable `type` in the links to your projects, which is defined in every file belonging to the "projects" collection.
```yml
---
layout: page
type: python
title: MyAwesomeProject
---
Some content
```

You can use the `type` variable in your permalink by first adding it to an array of custom permalink placeholders for the collection, and then adding the placeholder to the permalink setting prefixed with a `:` like every other Jekyll placeholder.
```yml
collections:
  projects:
    output: true
    custom_permalink_placeholders: ["type"]
    permalink: projects/:type/:title/
```
These settings lead to the "project" page, shown above, to be live at `/projects/python/MyAwesomeProject`.

If the variable is not defined, it is ignored for the permalink. Meaning `projects/:type/:title/` will be like `projects/:title/` for a document without `type` set in its Front Matter. This is the same behaviour as for the default Jekyll placeholders.