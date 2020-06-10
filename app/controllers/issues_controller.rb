class IssuesController < InheritedResources::Base

  def create
    @issue = Issue.new(issue_params)
    @issue.user_id = current_user.id
    if @issue.save
      redirect_to albums_path
    else
      render "new"
    end
  end
  

  private

    def issue_params
      params.require(:issue).permit(:name, :text)
    end

end
