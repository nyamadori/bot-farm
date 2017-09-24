# frozen_string_literal: true

class Bot < ApplicationRecord
  attr_accessor :script

  validates :name, presence: true
  validates :description, presence: true
end
