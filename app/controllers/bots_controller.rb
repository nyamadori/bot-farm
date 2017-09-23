# frozen_string_literal: true

class BotsController < ApplicationController
  def index
    @bots = Bot.all
  end
end
