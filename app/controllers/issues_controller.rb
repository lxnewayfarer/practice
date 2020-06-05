class IssuesController < InheritedResources::Base

  private

    def issue_params
      params.require(:issue).permit()
    end

end
