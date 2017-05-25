@user = User.create(email: "test@test.com",
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "Jon",
                    last_name: "Snow",
                    phone: "5204418905")

puts "1 user created"
AdminUser.create(email: "admin@admin.com",
                 password: "asdfasdf",
                 password_confirmation: "asdfasdf",
                 first_name: "Admin",
                 last_name: "Name",
                 phone: "5204418905")

puts "1 admin user created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu lAenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Post have been created"
100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 AuditLogs have been created"
