class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :donations, foreign_key: :"campaign_id"

  def raised_money
    @raisedMoney = 0
    self.donations.each do |donation|
      @raisedMoney += donation.donation_amount
    end
    @raisedMoney
  end
end
