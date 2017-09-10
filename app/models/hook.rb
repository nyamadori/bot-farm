class Hook < ApplicationRecord
  belongs_to :bot
  has_many :hook_scripts
  has_many :scripts, through: :hook_scripts
  has_many :execution_requests

  enum kind: {
    message: 1,
    reaction: 2,
  }

  class << self
    def find_from(event)
      where(kind: event[:type]).find_each.find { |hook| hook.match(event) }
    end
  end

  def match(event)
    hook_kind.match(event)
  end

  def perform(event)
    execution_requests.new(event: event).perform
  end

  private

  def hook_kind
    HookKind.class_get(kind).new(params)
  end
end
