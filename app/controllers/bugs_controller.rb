class BugsController < ApplicationController
  def new
    @bug = Bug.new
    @type = ["feature", "bug"]
    @projectt_id = params[:projectt_id]
  end

  def create
    @bug = Bug.new(bug_params)
    project = Projectt.find(params[:bug][:projectt_id])
    project.bugs.each do |b|
      if b.types == "Bug"
        if b.title == params[:bug][:title]
          @bug.errors.add(:bug, :not_implemented, message: "Title of Bug already Included.Write differen Title")
          break
        end
      end
    end
    @projectt_id = params[:projectt_id]
    if @bug.errors.any?
      flash.notice = "Title of Bug already Included.Write different Bug Title"
      
      render "new"
    elsif @bug.save
      redirect_to root_path
    end
  end

 

  private

  def bug_params
    params.require(:bug).permit(:title, :description, :deadline, :projectt_id, :types, :statuses)
  end
end
