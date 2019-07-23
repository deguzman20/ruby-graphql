OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "543301339468740",
           "3e38af9ff097f28c83e331c2526f757f",
           info_fields: "first_name, last_name, email"
  #  provider :google_oauth2,
  # '1070359266429-n630g38tlff267umg8usdecu3jguo43a.apps.googleusercontent.com',
  # 'QMVYvjtOmWlZg6mz88W4HHA0',
  # {
  #   info_fields: 'first_name, last_name, email',
  #    :name => "google",
  #    :provider_ignores_state => true,
  #    :scope => ['contacts','plus.login','plus.me','email','profile'],
  #    :prompt => "select_account",
  #    :image_aspect_ratio => "square",
  #    :image_size => 50,
  #    :access_type => 'online'
  #  }
end
