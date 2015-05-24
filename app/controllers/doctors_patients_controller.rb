class DoctorsPatientsController < ApplicationController

  before_action :authenticate_user2!

  def index
    @doctor_id = current_user2.id
    @patients = DoctorPatient.where("doctor_id = #{@doctor_id}")
  end

  def new
    roc_id = params[:roc_id]
    puts "roc_id = #{roc_id}"
    if !params[:roc_id].nil?
      @searchs = User.where('roc_id = ?',"#{params[:roc_id]}")
      flash[:roc_id] = roc_id
    else

    end
  end

  def create
    puts 'rock'
    @user = User.where('roc_id = ?',"#{flash[:roc_id]}")
    @user.update(@user.first.id,:doc_id => current_user2.id)
    @patient = DoctorPatient.where('user_id = ?',@user.first.id)
    @patient.update(@patient.first.id,:doctor_id => current_user2.id)
    redirect_to :action => 'index'
  end

  def show
    @patient = DoctorPatient.find(params[:id])
  end

  def edit
    @patient = DoctorPatient.find(params[:id])
  end

  def update
    @patient = DoctorPatient.find(params[:id])
    @patient.update(dp_params)
    redirect_to :action => :show , :id => @patient
  end

  def destroy
    user_id = DoctorPatient.find(params[:id]).user_id
    @user = User.find("#{user_id}")
    @user.update(:doc_id => nil)
    @patient = DoctorPatient.find(params[:id])
    @patient.update(:doctor_id => nil)
    redirect_to :action => :index
  end

  def show_userview
    @advise = DoctorPatient.where("user_id = ?",current_user.id)
    @doctor = User2.find(@advise.first.doctor_id)
  end

  private

  def dp_params
    params.require(:doctor_patient).permit(:user_name,:advise)
  end

end
