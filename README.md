# Seo

A helper that allows you to write meta tags for SEO purposes. If you set the same tag twice, the later defined tag will override.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'seo-meta-tags'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install seo-meta-tags

## Usage

seo-meta-tags gives you the ability to add a meta tag to a collection which can be rendered out later.
To add a tag to the collection you can use

    meta_tag(property, content)

For example to set the keywords, and description tags we would do

    meta_tag('description', 'A Beautiful Description')
    meta_tag('keywords', 'keyword1, keyword2, keyword3')

There is a special helper for rendering the title

    title('My Site Title')

At this point no tags have been rendered.. To do so, use the meta_tags info

    meta_tags


## Up coming?

At some point in the future I plan to add

[ ] Auto og: tag generation based on other tags

## Contributing

1. Fork it ( https://github.com/markgandolfo/seo-meta-tags/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
