class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    @room = Room.create(room_params)
    if @room.save
      redirect_to root_path
    else
      rendaer :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:name,uesr_ids:[])
    end
end
