class HomeController < ApplicationController
  def index
    @ruby_version = RUBY_VERSION
    @rails_version = Rails.version
    @environment = Rails.env

    # Fetch tasks from SQLite
    @tasks = Task.order(created_at: :desc)
    @task_count = @tasks.count

    # Test SQLite connection
    begin
      @db_version = ActiveRecord::Base.connection.execute("SELECT sqlite_version()").first&.values&.first
      @db_file = ActiveRecord::Base.connection_db_config.database
      @db_status = "Connected (SQLite #{@db_version})"
    rescue => e
      @db_status = "Error: #{e.message}"
    end
  end
end
