exports.config =
  # See http://brunch.readthedocs.org/en/latest/config.html for documentation.
  paths:
    public: 'public/app'
  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
      order:
        # Files in `vendor` directories are compiled before other files
        # even if they aren't specified in order.before.
        before: [
          'vendor/scripts/jquery.min.js',
          'vendor/scripts/bootstrap.min.js',
          'vendor/scripts/underscore-min.js',
          'vendor/scripts/backbone-min.js',
          'vendor/scripts/knockout-2.2.1.js',
          'vendor/scripts/knockback.min.js'
        ]

    stylesheets:
      joinTo:
        'stylesheets/app.css': /^app/
        'stylesheets/vendor.css': /^vendor/
      order:
        before: [
          'vendor/styles/normalize.css'
          'vendor/styles/bootstrap.min.css'
          'vendor/styles/bootstrap-responsive.min.css'
        ]

    templates:
      joinTo: 'javascripts/app.js'