class Document < ActiveRecord::Base

  def format
    sleep 600
    update_column :imported, true
  end

  #handle_asynchronously :format
  handle_asynchronously :format, priority: 1, run_at: Proc.new { 10.seconds.from_now }, queue: 'queue1'

end
