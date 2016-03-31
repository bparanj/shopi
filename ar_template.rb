require 'irb'

begin
  require 'bundler/inline'
rescue LoadError => e
  $stderr.puts 'Bundler version 1.10 or later is required. Please update your Bundler'
  raise e
end

gemfile(true) do
  source 'https://rubygems.org'
  # Activate the gem you are reporting the issue against.
  gem 'activerecord', '5.0.0.beta3'
  gem 'sqlite3'
end

require 'active_record'
require 'logger'

# This connection will do for database-independent katas.
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')
ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Schema.define do
  create_table :articles, force: true do |t|
  end

  create_table :comments, force: true do |t|
    t.integer :article_id
  end
end

class Article < ActiveRecord::Base
  has_many :comments
end

class Comment < ActiveRecord::Base
  belongs_to :article
end

IRB.start