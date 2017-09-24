# frozen_string_literal: true

class BotsController < ApplicationController
  def index
    @bots = Bot.all
  end

  def new
    @bot = Bot.new
  end

  def create
    @bot = Bot.new(bot_params)

    if @bot.save
      redirect_to @bot
    else
      render :new
    end
  end

  private

  def bot_params
    params.require(:bot).permit(:name, :description, :script, :attachments)
  end
end
