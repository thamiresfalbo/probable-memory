namespace :dev do

  desc 'Initializes the environment.'
  task setup: :environment do
    if Rails.env.development?
      show_spinner('Dropping the Database...') { `bin/rails db:drop` }
      show_spinner('Creating the Database...') { `bin/rails db:create` }
      show_spinner('Migrating the Database...') { `bin/rails db:migrate` }
      show_spinner('Creating user sample...') { `bin/rails dev:add_default_user` }
    else
      puts 'Not in development environment.'
    end
  end

  task add_default_user: :environment do
    User.create!(
      email: 'user@123.com',
      password: 'keepsalty'
    )
  end

  private

  def show_spinner(msg_start, msg_end = 'Done!')
    spinner = TTY::Spinner.new(":spinner #{msg_start}", format: :dots)
    spinner.auto_spin
    yield
    spinner.success(msg_end.to_s)
  end
end
