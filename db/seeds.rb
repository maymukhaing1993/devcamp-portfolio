3.times do |topic|
	Topic.create!(
		 title: "Topic #{topic}"
		)
end

10.times do |blog|
  Blog.create!(
  	 title: "My Blog Post #{blog}",
  	 body: "dbfbeifbeifbeisbvjsdvbjjvbsdbvdjvbjd
  	 vbjsdbvjsdbvjdbvdjvbjdvdvvdvdvdvdvfdvdfvdfvd",
  	 topic_id: Topic.last.id 
  	)
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
  	 title: "Rails #{skill}",
  	 percent_utilized: 15
  	)
end

puts "5 skills created"

8.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Ruby on Rails",
		body: "jfsdfbsfbdsjfbsjfbsdjbsdbjsbbjb
		  fkfnskfnskdnfsnfsfnslfnsdnf",
		main_image: "https://via.placeholder.com/150",
		thumb_image: "https://via.placeholder.com/150"
		)
end

1.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Angular",
		body: "jfsdfbsfbdsjfbsjfbsdjbsdbjsbbjb
		  fkfnskfnskdnfsnfsfnslfnsdnf",
		main_image: "https://via.placeholder.com/150",
		thumb_image: "https://via.placeholder.com/150"
		)
end

puts "9 portfolio items created"