namespace :notification do
  desc "Sends a sms message to employees that ask them to log if they had overtime or not"
  task sms: :environment do
    # 1. Schedule to run at Sunday at 5pm
    # 2. Iterate over all employees
    # 3. Skip AdminUsers
    # 4. Send a message that has instructions and a link to log time

    # User.all.each do |user|
    #   SmsTool.send_sms()
    #
    # end
    # number: '555-555-5555'
    # number: '5555553325'
    #no spaces or dashes
    #exactaly 10 characters
    #all characters have to be a number
  end

end