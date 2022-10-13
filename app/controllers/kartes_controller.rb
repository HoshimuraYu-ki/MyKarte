class KartesController < ApplicationController
  def index
  end
  def new
    @karte_record = KarteRecord.new
  end
  def create
    @karte_record = KarteRecord.new(karte_record_params)
    if @karte_record.valid?
      @karte_record.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def karte_record_params
    params.require(:karte_record).permit(:institution_name,:clinical_department_id,:consultation_date,:doctor,:subjective,:objective,:assessment,:plan,:next).merge(user_id: current_user.id,hospital_clinic_id: params[:hospital_clinic_id])
  end
end