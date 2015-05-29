require 'socket'
class PierController < ApplicationController
  respond_to :html, :js

  def self.positions
    [13.4, 7, 3, 12, 16, 20, 25, 30, 45]
  end
  def up
    socket = TCPSocket.new('129.65.152.119', 8081)
    socket.write "up"
    socket.close
    render nothing: true
  end

  def down
    socket = TCPSocket.new('129.65.152.119', 8081)
    socket.write "down"
    socket.close
    render nothing: true
  end
  
  def goto
    socket = TCPSocket.new('129.65.152.119', 8081)
    socket.write positions[:id]
    socket.close
    render nothing: true
  end

end
