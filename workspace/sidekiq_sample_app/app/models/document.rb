class Document < ApplicationRecord

	# long running task
	def format
		# pretending long running task
		sleep 600
		
		update_column :imported, true
	end
end
