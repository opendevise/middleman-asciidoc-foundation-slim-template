compass_config do |config|
  config.add_import_path 'components/foundation/scss'
  #config.add_import_path 'components/foundation-icon-fonts'
  #config.add_import_path 'components/fontawesome/scss'
  config.http_path = '/'
  config.css_dir = 'stylesheets'
  config.sass_dir = 'stylesheets'
  config.images_dir = 'images'
  config.javascripts_dir = 'javascripts'

  # You can select your preferred output style here (can be overridden via the command line):
  # output_style = :expanded or :nested or :compact or :compressed

  # To enable relative paths to assets via compass helper functions. Uncomment:
  # relative_assets = true

  # To disable debugging comments that display the original location of your selectors. Uncomment:
  # line_comments = false
end

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
#activate :livereload

# Add bower's directory to sprockets asset path
after_configuration do
  @bower_config = JSON.parse(IO.read %(#{root}/.bowerrc))
  sprockets.append_path File.join root, @bower_config['directory']
end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :asciidoc_attributes, %w(icons=font source-highlighter=coderay coderay-css=style)

set :slim, { pretty: true, sort_attrs: false, disable_escape: true }

configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets
end
