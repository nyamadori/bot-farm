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

  def update
    @bot = Bot.find(params[:id])

    if @bot.update(bot_params)
      redirect_to @bot
    else
      render :new
    end
  end

  def destroy
    @bot = Bot.find(params[:id])
    @bot.destroy
    redirect_to bots_path
  end

  def show
    @bot = Bot.find(params[:id])
  end

  def edit
    @bot = Bot.find(params[:id])
  end

  private

  def bot_params
    params.require(:bot).permit(:name, :description, :script, :attachments)
  end
end
