# frozen_string_literal: true

class TrainingsController < ApplicationController
  before_action :set_training, only: %i[show edit update destroy]

  def index
    @trainings = Training.all
  end

  def new
    @training = Training.new
  end

  def edit; end

  def create
    @training = Training.new(training_params)

    respond_to do |format|
      if @training.save
        format.html { redirect_to trainings_url, notice: 'Training was successfully created.' }
        format.json { render :index, status: :ok, location: trainings_url }
      else
        format.html { render :new }
        format.json { render json: @training.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @training.update(training_params)
        format.html { redirect_to trainings_url, notice: 'Training was successfully updated.' }
        format.json { render :index, status: :ok, location: trainings_url }
      else
        format.html { render :edit }
        format.json { render json: @training.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @training.destroy
    respond_to do |format|
      format.html { redirect_to trainings_url, notice: 'Training was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_training
    @training = Training.find(params[:id])
  end

  def training_params
    params.require(:training).permit(:name, :cover, :description, excercises_attributes: %i[name reps sets id _destroy])
  end
end
