Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Store uploaded files on the local file system (see config/storage.yml for options)
  config.active_storage.service = :local

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  #
  # Smtp
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.default_url_options = { host:'vitalmarche.cf'}
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.default :charset => "utf-8"
  config.action_mailer.smtp_settings = {
      :address => "smtp.gmail.com",
      :port => 465,
      :domain => 'gmail.com',
      :user_name => "contactvitalmarche@gmail.com",
      :password => ENV['SMTP_PASSWORD'],
      :authentication => :plain,
      :enable_starttls_auto => true
  }


=begin
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.default_url_options = { host:'vitalmarche.cf'}
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default :charset => "utf-8"
  config.action_mailer.smtp_settings = {
      :address => 'smtp.sendgrid.net',
      :port => 465,
      :domain => 'vitalmarche.cf',
      :user_name => 'apikey',
      :password => ENV['SENDGRID_KEY'],
      :authentication => :plain,
      :enable_starttls_auto => true,
  }

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
      :address => 'maildev',
      :port => 25,
      :openssl_verify_mode => 'none'
  }
  config.action_mailer.asset_host = 'http://localhost:3000'

  config.action_mailer.delivery_method = :smtp
  host = 'localhost'
  config.action_mailer.default_url_options = { host: host}
  config.action_mailer.asset_host
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.smtp_settings = {
      :address => ENV['SMTP_HOST'],
      :port => ENV['SMTP_PORT'],
      :user_name => ENV['SMTP_USERNAME'],
      :password => ENV['SMTP_PASSWORD'],
      :authentication => ENV['SMTP_AUTH'] || "plain",
      :enable_starttls_auto => ENV['SMTP_STARTTLS'] || false,
      :ssl => ENV['SMTP_SSL'] || false
  }

  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_caching = false
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
      address: "smtp.gmail.com",
      port: 587,
      authentication: "plain",
      enable_starttls_auto: true,
      user_name: ENV['SMTP_USERNAME'],
      password: ENV['SMTP_PASSWORD'],
      domain: "smtp.gmail.com",
      openssl_verify_mode: "none",
  }

  config.action_mailer.delivery_method = :smtp
  host = 'vitalmarche.cf'
  config.action_mailer.default_url_options = { host: host}
  config.action_mailer.smtp_settings = {
      address:              'smtp.mail.yahoo.com',
      port:                 587,
      domain:               'vitalmarche.cf',
      user_name:            'contactvitalmarche@yahoo.com',
      password:             ENV['SMTP_PASSWORD'],
      authentication:       'plain',
      enable_starttls_auto: true
  }
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default_options = {from: 'contactvitalmarche@yahoo.com'}
=end

  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
