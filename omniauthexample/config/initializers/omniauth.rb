OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
    provider :developer if Rails.env.development?
    provider :github, '1a2aa994738ffd34088e', 'b79d39d3f663af6fee6a9f843074520ae1f55c57', 
    { :name => "github", :scope => ['read:user', 'user:email']}
end