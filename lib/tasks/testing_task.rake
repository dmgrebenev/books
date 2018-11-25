namespace :testing_task do
  desc "Показать всех авторов внутри проекта"
  task list_authors: :environment do
    puts Author.count
  end

end
