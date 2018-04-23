class GamesController < ApplicationController


  def try
    @answer = 35
    @guess = params[:number].to_i
    cookies[:answer] = @answer
    if @guess < @answer
      @result = "too low"
    elsif @guess > @answer
       @result = "too high"
     else
       @result = "you win"
       cookies[:counter] = 0
     end
     # if params[:number].to_i == nil
     #   cookies[:counter] = 0
     if  @guess != @answer
       cookies[:counter] = cookies[:counter].to_i + 1
     end
    render "try.html.erb" # Rails magic without this
  end

  def reset
      cookies[:counter] = 0
      render "try.html.erb" # Rails magic without this

  end


end
