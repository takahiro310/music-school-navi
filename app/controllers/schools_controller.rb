class SchoolsController < ApplicationController

  def index
    @user ||= User.find(session[:user_id])
    logger.debug(@user.email)
    @schools = School.page(params[:page])
  end
  
  def search
    # TODO: elasticsearchに変えよう
    @schools = School.where("school_name like '%?%' OR address_pref like '%?%'", params[:q], params[:q])
    render "top/index"
  end
  
  def show
    @school = School.find(params[:id])
  end

  def new
    @school = School.new
    @school.school_photo.build
    @school.school_movie.build
    @school.school_genre.build
    @genres = Genre.all
  end

  def create
    @school = School.new(params.require(:school)
      .permit(
        :school_name, :address_pref, :address_city, :address_block, :near_station, :walk_within, :tel, :mail, :lesson_price, :lesson_time, :admission_fee, :trial_lesson, :card_photo, :self_pr, :instructor_start_year, :instructor_profile, :instruct_female, :instruct_child, :instruct_male, :twitter_id, :facebook_id, :home_page_url, 
        school_photo_attributes:[:id,:school_id,:photo_id,:photo],
        school_movie_attributes:[:id,:school_id,:movie_id,:youtube_v],
        school_genre_attributes:[:id,:school_id,:genre_id]
      )
    )
    @school.save
    redirect_to home_path
  end
end
