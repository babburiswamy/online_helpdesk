class IssuesController < ApplicationController
  def index
    @issue = Issue.all
  end
  def new
    #@issue = Issue.new
  end
  def home
  end
  def create
    @issue = Issue.new(issue_params)
    if @issue.save
      flash[:success] = "Issue created!"
      redirect_to '/issues'
#redirect_to 'issue_path'
    else
      render 'new'
    end
  end
  
  def issue_params
    params.require(:issue).permit(:category, :severity, :prority, :issue_type, :issue_box)
  end
  
  def preview
    @issue = Issue.new(issue_params)
 end 
  def show
    render params[:preview]
  end
 def destroy
end
end
