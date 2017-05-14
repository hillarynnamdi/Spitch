class DashboardController < ApplicationController

def index
	if params[:search]
      @all_pitches = Pitch.all.where("company_name LIKE '%#{params[:search]}%' ") 
    else
    @all_pitches=Pitch.all.where("pitch_status='pending'").order("updated_at DESC")

    end		
end

def pending
	if params[:search]
      @all_pitches = Pitch.all.where("company_name LIKE '%#{params[:search]}%' ") 
    else
    @all_pitches=Pitch.all.where("pitch_status='pending'").order("updated_at DESC")

    end		
end

def all
	if params[:search]
      @all_pitches = Pitch.all.where("company_name LIKE '%#{params[:search]}%' ") 
    else
    @all_pitches=Pitch.all.order("updated_at DESC")

    end		
end

def pitched
	if params[:search]
      @all_pitches = Pitch.all.where("company_name LIKE '%#{params[:search]}%' ") 
    else
    @all_pitches=Pitch.all.where("pitch_status='pitched'").order("updated_at DESC")

    end		
end

end
