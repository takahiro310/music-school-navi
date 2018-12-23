class SchoolsController < ApplicationController

  def index
    @schools = School.page(params[:page])
  end
  
  def show
    @school = School.find(params[:id])
  end

  def new
    redirect_to "/login" unless logged_in?
    @school = School.new
    @school.school_photo.build
    @school.school_photo.build
    @school.school_photo.build
    @school.school_movie.build
  end

  def create
    return head(:forbidden) unless logged_in?
    @school = School.new(school_params)
    @school.save
  end

  def edit
    @school = School.find_by(id: params[:id])
    redirect_to "/login" if current_user.id != @school.user_id
  end

  def update
    @school = School.find_by(id: params[:id])
    return head(:forbidden) if current_user.id != @school.user_id
    @school.update(school_params)
  end

  def school_params
    params.require(:school)
      .permit(
        :school_name, :address_pref, :address_city, :address_block, :near_station, :walk_within, :tel, :mail, :lesson_price, :lesson_time, :admission_fee, :trial_lesson, :card_photo, :self_pr, :instructor_start_year, :instructor_profile, :instruct_female, :instruct_child, :instruct_male, :twitter_id, :facebook_id, :home_page_url, 
        {:genre_ids => []},
        school_photo_attributes:[:id,:school_id,:photo_id,:photo],
        school_movie_attributes:[:id,:school_id,:movie_id,:youtube_v],
      ).merge(user_id: current_user.id)
    end

  def destroy
    return head(:forbidden) unless logged_in?
    @school = School.find_by(id: params[:id])
    @school.destroy
  end
end
