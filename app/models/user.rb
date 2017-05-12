class User < ApplicationRecord
	has_many :posts
	has_many :businesses
	has_many :favorites
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable
	def self.from_omniauth(auth)
	where(auth.slice(:provider, :uid)).first_or_create do |user|
		user.provider = auth.provider
		user.uid = auth.uid
		user.username = auth.info.nickname
	end

 	end
	# if (400..499)?
 #        raise OAuth::Unauthorized, response
 #      else
 #        response.error!
 #     end


end



