class Subscription < ActiveRecord::Base
	validates :email,presence:true
	validates :email, uniqueness: {message: "already subscribed to list, Spitch Newsletter."},if: "email.present?" 
end
