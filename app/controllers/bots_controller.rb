# frozen_string_literal: true

class BotsController < ApplicationController
  def index
    @bots = Bot.all
  end

  def new
    @bot = Bot.new
  end
end
