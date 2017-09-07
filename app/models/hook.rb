class Hook < ApplicationRecord
  belongs_to :bot
  has_many :hook_scripts

  enum kind: {
    message: 1,
    reaction: 2,
  }

  def triggered_by?(event)
    hook_kind.triggered_by?(event)
  end

  private

  def hook_kind
    HookKind.class_get(kind).new(params)
  end
end
