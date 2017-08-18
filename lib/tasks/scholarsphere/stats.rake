# frozen_string_literal: true

namespace :scholarsphere do
  namespace :stats do
    desc 'Cache file view & download stats for all users'
    task user_stats: :environment do
      importer = Sufia::UserStatImporter.new(verbose: true, logging: true, delay_secs: 1.0, number_of_retries: 5)
      importer.import
    end
  end
end
