class BugcloudController < ApplicationController
  unloadable
  
  def index
    @project = Project.find params[:id]
    @issues_freq = Hash.new
    @project.issues.each do |el|
    	@issues_freq[el] = 	el.journals.length * 4 + 
                          el.relations.length * 2 + 
                          el.priority.position 
    end
    
  end
end
