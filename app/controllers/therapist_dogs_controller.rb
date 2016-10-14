class TherapistDogsController < ApplicationController

  def new
    @therapist_dog = TherapistDog.new
  end

  def create
    @therapist_dog = TherapistDog.new(therapist_dog_params)
    @therapist_dog.save
    redirect_to @therapist_dog
  end

  def show
    @therapist_dog = TherapistDog.find(params[:id])
  end

  private

  def therapist_dog_params
    params.require(:therapist_dog).permit(:name, :date_of_birth,
                                           :breed, :status,
                                           :description)
  end

end
