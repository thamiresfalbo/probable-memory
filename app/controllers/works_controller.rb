class WorksController < ApplicationController

    private 
    def work_params 
        params.require(:work).permit(:title, :body, :tag_list)
    end
end
