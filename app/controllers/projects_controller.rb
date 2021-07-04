class ProjectsController < ApplicationController


  def new

    @project = Project.new
  end




  def index
    if params[:state].present?
      @projects = Project.where("state = ?", params[:state])
    else
      @projects = Project.all
    end
  end



  def create
    @project = Project.create(name: params[:name], description: params[:description], starts_on: params[:starts_on], ends_on: params[:ends_on], state: params[:state])
  end




end
