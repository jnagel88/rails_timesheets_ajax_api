
user =User.create(first_name: 'Jon', last_name: 'snow', email:'test@test.com', password:'asdasd')
puts "1 user created: email: test@test.com, pw:asdasd"

100.times do |post|
  Post.create(date: Date.today, rationale: "Rationale content - #{post}", user: user)
end
puts '100 posts created'