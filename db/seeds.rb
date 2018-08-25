100.times do |post|
  Post.create(date: Date.today, rationale: "Rationale content - #{post}")
end
puts '100 posts created'