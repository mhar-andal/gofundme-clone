class Donation < ActiveRecord::Base
  after_save :goal_reached?
  belongs_to :campaign, class_name: "Campaign"
  belongs_to :donator, class_name: "User"

  def goal_reached?
    self.campaign.update_attributes(goal_met: true) if self.campaign.raised_money >= self.campaign.target_goal unless self.campaign.goal_met == true
  end
end
