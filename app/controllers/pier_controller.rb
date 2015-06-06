require 'socket'
class PierController < ApplicationController
  respond_to :html, :js

  
  def up
    socket = TCPSocket.new('129.65.152.9', 8581)
    socket.write "up"
    socket.close
    render nothing: true
  end

  def down
    socket = TCPSocket.new('129.65.152.9', 8581)
    socket.write "down"
    socket.close
    render nothing: true
  end
  
  def goto
    # positions =  [13.4, 7, 3, 12, 16, 20, 25, 30, 45]
    if params[:id].to_i > 0 and params[:id].to_i < 10
      socket = TCPSocket.new('129.65.152.18', 8581)
      # socket.write positions[params[:id].to_i - 1]
      socket.write Locations.find(params[:id].to_i - 1).position
      # puts positions[params[:id].to_i - 1]
      socket.close
    end
    render nothing: true
  end

end
