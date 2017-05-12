Rails.application.config.middleware.use OmniAuth::Builder do 
	provider :facebook, '759137984245700', '68c96e58d56f00f98b4db7cb4b443bb7'
end