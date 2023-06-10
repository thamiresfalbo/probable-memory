DEFAULT_PASSWORD = '123456'
DEFAULT_FILES_PATH = File.join(Rails.root, 'lib', 'tmp')

namespace :dev do
  desc 'Initializes the environment.'
  task setup: :environment do
    if Rails.env.development?
      show_spinner('Dropping the Database...') { `bin/rails db:drop` }
      show_spinner('Creating the Database...') { `bin/rails db:create` }
      show_spinner('Migrating the Database...') { `bin/rails db:migrate` }
      show_spinner('Creating users...') { `bin/rails dev:add_default_user` }
      show_spinner('Adding tags..') { `bin/rails dev:add_tags` }
    else
      puts 'Not in development environment.'
    end
  end

  desc 'Add default users'
  task add_default_user: :environment do
    User.create!(
      email: 'user@123.com',
      password: DEFAULT_PASSWORD,
      role: 'member'
    )
  end

  desc 'Add an Administrator'
  task add_admin: :environment do
    Admin.create!(
      email: 'admin@123.com',
      password: DEFAULT_PASSWORD,
      role: 'admin'
    )
  end

  describe 'Add sample works' do
    task add_works :environment do 
      Work.create!(
        
      )
  end

  desc 'Add tagging'
  task add_tags: :environment do
    file_name = 'tags.txt'
    file_path = File.join(DEFAULT_FILES_PATH, file_name)

    File.open(file_path, 'r').each do |line|
      ActsAsTaggableOn::Tag.new(
        name: line.strip
      ).save
    end
  end

  private

  def show_spinner(msg_start, msg_end = 'Done!')
    spinner = TTY::Spinner.new(":spinner #{msg_start}", format: :flip)
    spinner.auto_spin
    yield
    spinner.success(msg_end.to_s)
  end
end
