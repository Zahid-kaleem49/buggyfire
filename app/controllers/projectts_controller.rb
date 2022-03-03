class ProjecttsController < ApplicationController
  def new
    @projectt = Projectt.new
    # @user = User.all
  end

  def create
    @projectt = Projectt.new(params_projectt)
    debugger
    # @projectt.developer_id = params[:projectt][:user][:dev_id]
    # @projectt.qa_id = params[:projectt][:user][:qa_id]
    @projectt.manager_id = current_user.id
    if @projectt.save
      redirect_to root_path
    end
  end

  def edit
    @projectt = Projectt.find(params[:id])
  end

  def update
    @projectt = Projectt.find(params[:id])

    if @projectt.update(params_projectt)
      redirect_to root_path
    end
  end

  def index
    @projectts = Projectt.all
  end

  def bug
    @project = Projectt.find(params[:id])
    @bug = @project.bugs
    # debugger
  end

  def show
    @projectt = Projectt.find(params[:id])
  end

  def destroy
    @projectt = Projectt.find(params[:id])
    if @projectt.destroy
      flash[:success] = "Object was successfully deleted."
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      redirect_to projectts_path
    end
  end

  private

  def params_projectt
    params.require(:projectt).permit(:title, :description, :developer_id, :qa_id)
  end
end
