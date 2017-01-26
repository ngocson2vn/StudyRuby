class UploadsController < ApplicationController
  def index
  end

  def format
  	@doc = Document.create(name: 'Invisible')
  	
  	# NOT BACKGROUND
  	#@doc.format
  	
  	# HAND OVER TO BACKGROUND JOB
  	@doc.delay.format
  end
end
