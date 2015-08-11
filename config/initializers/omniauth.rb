Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '26140763044-rdf4inru08tc69r888boiqk0mrcd4khi.apps.googleusercontent.com', 'u-iYe9d-XURkvzVAu5Wq1TnB', scope: 'userinfo.profile,youtube'
end