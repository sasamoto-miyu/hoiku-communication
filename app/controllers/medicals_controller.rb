class MedicalsController < ApplicationController
  def index
    @medical = Medical.all
  end

  def new
    @medical = Medical.new
  end

  def create
    Medical.create(medical_params)
    redirect_to medicals_path
  end

  def destroy
    medical = Medical.find(params[:id])
    medical.destroy
  end

  def edit
    @medical = Medical.find(params[:id])
  end

  def update
    medical = Medical.find(params[:id])
    medical.update(medical_params)
    redirect_to medicals_path
  end

  private
  def medical_params
    params.require(:medical).permit(:title, :text, :image, :map, :site_url)
  end
end
