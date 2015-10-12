Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '215754400870-emqquosno6ftr49hpakmfba5abdfn33n.apps.googleusercontent.com', 'Fi1kPiy_TADVpoOs98p7fXXx', scope: 'userinfo.profile,youtube'
end