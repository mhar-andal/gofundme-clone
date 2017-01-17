def rand5
  (1..5).to_a.sample
end

def randDonation
  [1, 5, 10, 20, 50, 100].sample
end

User.create(username: "mharandal", password: "password", first_name: "Mhar", last_name: "Andal")
User.create(username: "mharandal1", password: "password", first_name: "Mhar", last_name: "Andal")
User.create(username: "mharandal2", password: "password", first_name: "Mhar", last_name: "Andal")
User.create(username: "mharandal3", password: "password", first_name: "Mhar", last_name: "Andal")
User.create(username: "mharandal4", password: "password", first_name: "Mhar", last_name: "Andal")

Campaign.create(title: "Help Mhar get a job!", description: "He is in desperate need of getting a job!", location: "Chicago, Illinois", creator_id: 1, target_goal: 1000)
Campaign.create(title: "Help Mhar go to bootcamp!", description: "He needs to learn!", location: "Chicago, Illinois", creator_id: 2, target_goal: 12000)
Campaign.create(title: "Help Mhar get fit!", description: "He needs to get fit!", location: "Chicago, Illinois", creator_id: 3, target_goal: 1000)
Campaign.create(title: "Help Mhar get money!", description: "He needs to spend it!", location: "Chicago, Illinois", creator_id: 4, target_goal: 10000)
Campaign.create(title: "Help Mhar get a apartment!", description: "He needs to sleep!", location: "Chicago, Illinois", creator_id: 5, target_goal: 3000)



5000.times {Donation.create(campaign_id: rand5, donator_id: rand5, donation_amount: randDonation)}
