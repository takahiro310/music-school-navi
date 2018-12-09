class SchoolsController < ApplicationController

  def index
    @schools = School.page(params[:page])
  end
  
  def search
    # TODO: elasticsearchに変えよう
    @schools = School.where("school_name like '%?%' OR address_pref like '%?%'", params[:q], params[:q])
    render template: "top/index"
  end
  
  def show
    @school = School.find(params[:id])
  end
end
