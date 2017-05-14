class PitchController < ApplicationController


def create
  @pitch = Pitch.create(pitch_params)
	@pitch.pitch_status="pending"
  @pitch.save

	redirect_to success_pitch_index_path

	session[:pitched]="true"

end


def edit
	@pitch=Pitch.find(params[:id])

end


def success

if !session[:pitched]
	redirect_to root_path
else
	session.delete(:pitched)
end

end

 def update
 	@pitch=Pitch.find(params[:id])
 	 	@pitch.update(pitch_params)
    if @pitch.pitch_status=="pending"
 	      redirect_to pending_dashboard_index_path
    elsif @pitch.pitch_status=="pitched"
        redirect_to pitched_dashboard_index_path
    end
  
 	  flash[:success]="Update for #{@pitch.company_name}, was successful"
 end

 def destroy
 	@pitch=Pitch.find(params[:id])
 	@pitch.destroy
 	redirect_to pitched_dashboard_index_path
 end
 
private
def pitch_params
params.require(:pitch).permit(:owner_name,:owner_email,:other_info,:launch_date,:category,:team_members,:company_address,:contact,:headline,:company_name,:app_link,:description,:pitch_status)
end


end
