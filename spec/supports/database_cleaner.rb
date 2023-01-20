RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
    Rails.application.load_tasks
  end

  config.before(:each) do |example|
    DatabaseCleaner.strategy = if example.metadata[:force_truncation_strategy]
                                 :truncation
                               else
                                 :transaction
                               end
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
    FactoryBot.rewind_sequences
  end
end
