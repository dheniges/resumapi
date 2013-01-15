# My custom rake tasks for development
namespace :dirk do
  desc 'Cleans the database by dropping, creating, migrating and seeding'
  task :clean do
    ['db:drop', 'db:create', 'db:migrate', 'db:seed'].each do |task|
      Rake::Task[task].invoke
    end
  end
end