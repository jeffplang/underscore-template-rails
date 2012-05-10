# underscore-template-rails

This gem adds a Underscore Templating Engine to Sprockets for use in the
asset pipeline in Rails >= 3.1 applications.

## Installation

Add `underscore-template-rails` to your Gemfile and run `bundle`.

## Usage

Underscore templates will be recognized by Sprockets with the `.utmp`
extension. Place them anywhere in the Sprockets load path.

```html
<!-- app/assets/javascripts/templates/author.tmpl -->
<div class="author"><%= name %></div>
```

In your application's JavaScript manifest file, require Underscore
plugin followed by your templates. The templates are compiled and named
with their Sprockets logical path, with the prefix "templates/" removed
if it is present:

```javascript
//= require underscore
//= require_tree ./templates

var author = {name: 'Roger'};            // the data to render the template against
var html = templates['author'](author);  // grab the tempalte and pass it the data
$('body').html(html));                   // place the html into the dom
```

## Configuration

You can change the variable that hold the templates but setting the
following configuration in `config/application.rb`:

```ruby
config.underscore_templates.variable = "argon"  # default is 'templates'
```

That would change the previous example to this:

```javascript
var html = argon['author'](author);
```

Happy templating!

## Acknowledgements

This Sprockets engine was originally derived from the
[jquery-tmpl-rails](https://github.com/jimmycuadra/jquery-tmpl-rails)
gem.
