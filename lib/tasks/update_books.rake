namespace :update do
  task books: :environment do
    UpdateBooksJob.perform_later
  end
end