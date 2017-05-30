namespace :notification do
  desc "Sends a sms message to employees that ask them to log if they had overtime or not"
  task sms: :environment do
    # if Time.now.sunday? do
      # employees = Employee.all
      # notification_message = "Please log into the overtime managment dashboard to request overtime or confirm your hours for last week https://aaron-overtime.herokuapp.com"
      #   employees.each do |employee|
      #     SmsTool.send_sms()
      #   end
    # end
  end
  desc "Sends mail notification to managers (AdminUsers) each day to inform them of pending overtime requests"
  task manager_email: :environment do
    # submitted_posts = Post.submitted
    # admin_users = AdminUser.all
    #
    # if submitted_posts.count > 0
    #   admin_users.each do |admin|
    #     ManagerMailer.email(admin).deliver_now
    #   end
    #end
  end

end
