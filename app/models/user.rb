class User < ActiveRecord::Base
  has_secure_password
  has_many :campaigns, foreign_key: "creator_id"
end
