class RoomsController < ApplicationController

  def idnex
  end
  def new
    @room = Room.new
  end
  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else 
      render :new
    end
  end
  def destroy
    # .findでkeyやid情報を指定,取得
    room = Room.find(params[:id])
    #.findで指定してからDB上のデータを消す
    room.destroy
    redirect_to root_path
  end

  private
  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end

end
