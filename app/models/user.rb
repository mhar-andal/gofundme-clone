class User < ActiveRecord::Base
  has_many :campaigns, foreign_key: "creator_id"
  has_many :donations, foreign_key: "donator_id"

  validates :username, presence: true, uniqueness: true

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  def authenticate(username, password)
    self.password == password && self.username == username
  end
end
