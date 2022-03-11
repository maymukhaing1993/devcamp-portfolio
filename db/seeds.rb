10.times do |blog|
  Blog.creat!(
  	 title: "My Blog Post #{blog}",
  	 body: "dbfbeifbeifbeisbvjsdvbjjvbsdbvdjvbjd
  	 vbjsdbvjsdbvjdbvdjvbjdvdvvdvdvdvdvfdvdfvdfvd"
  	)
end

puts "10 blog posts created"

5.times do |skill|
  Skill.creat!(
  	 title: "Rails #{skill}",
  	 percent_utilized: 15
  	)
end

puts "5 skills created"

9.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "My great service",
		body: "jfsdfbsfbdsjfbsjfbsdjbsdbjsbbjb
		  fkfnskfnskdnfsnfsfnslfnsdnf",
		main_image: "http://placehold.it/350*200",
		thumb_image: "http://placehold.it/350*200"
		)
end

puts "9 portfolio items created"