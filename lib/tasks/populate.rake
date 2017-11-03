namespace :db do
	desc "Erase and fill database"
	# creating a rake task within db namespace called 'populate'
  # executing 'rake db:populate' will cause this script to run
	task :populate => :environment do
		# Docs at: http://faker.rubyforge.org/rdoc/
	    #require 'faker'
	    #require 'factory_girl_rails'
	    
	    # Step 0: drop old databases and rebuild
	    Rake::Task['db:drop'].invoke
	    Rake::Task['db:create'].invoke
	    Rake::Task['db:migrate'].invoke
	    #Rake::Task['db:test:prepare'].invoke

	    # Step 1: Add Statuses
	    order_received = Status.new
	    order_received.name = "Order Received"
	    order_received.active = true
	    order_received.save!

	    # Step 2: Add Colors
	    red = Color.new
	    red.name = "Red"
	    red.active = true

	    # Step 3: Add Sizes
	    small = Size.new
	    small.name = "Small"
	    small.active = true

	    # Step 4: Add Items



	    # Step 1bii: Add Sina
	    # gu5 = User.new
	    # gu5.first_name = "Sina"
	    # gu5.last_name = "Siddiqi"
	    # gu5.phone = "5556789023"
	    # gu5.role = "intern"
	    # gu5.active = true
	    # gu5.email = "sina@example.org"
	    # gu5.password = "Intern123!"
	    # gu5.password_confirmation = "Intern123!"
	    # gu5.save!

	    # pu11 = ProgramUser.new
	    # pu11.user_id = gu4.id
	    # pu11.program_id = sfwar_p2.id
	    # pu11.save!

	end
end