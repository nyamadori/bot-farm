class Hook < ApplicationRecord
  belongs_to :bot
  has_many :hook_scripts
end
