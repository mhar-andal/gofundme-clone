def rand5
  (1..5).to_a.sample
end

def randDonation
  [1, 5, 10, 20, 50, 100].sample
end

def randTarget
  [1000, 2000, 5000, 10000, 12000].sample
end

def randTitle
  ["#{Faker::Name.name} needs tuition for #{Faker::University.name}", "#{Faker::Name.name} needs money for #{Faker::Commerce.department(1)}", "Save #{Faker::Company.name}"].sample
end

User.create(username: "mharandal", password: "password", first_name: "Mhar", last_name: "Andal")
User.create(username: "mharandal1", password: "password", first_name: "Mhar", last_name: "Andal")
User.create(username: "mharandal2", password: "password", first_name: "Mhar", last_name: "Andal")
User.create(username: "mharandal3", password: "password", first_name: "Mhar", last_name: "Andal")
User.create(username: "mharandal4", password: "password", first_name: "Mhar", last_name: "Andal")


20.times {Campaign.create(title: randTitle, description: Faker::Lorem.sentence(100), location: "#{Faker::Address.city}, #{Faker::Address.state}", creator_id: rand5, target_goal: randTarget)}




1000.times {Donation.create(campaign_id: rand5, donator_id: rand5, donation_amount: randDonation)}
