class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update]

  def index
    @dogs = Dog.all
  end

  def show
  end

  def new
    @dog = Dog.new
  end

  def create
    # USE Strong Params
    @dog = Dog.new(dog_params)

    if @dog.save
      redirect_to dogs_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    # USE Strong Params
    if @dog.update(dog_params)
      redirect_to dogs_path
    else
      render :edit
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :colour, :breed, :birthdate)
  end

  def set_dog
    @dog = Dog.find(params[:id])
  end
end
