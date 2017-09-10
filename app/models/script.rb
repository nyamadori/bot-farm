class Script < ApplicationRecord
  has_many :hook_scripts
  has_many :hooks, through: :hook_scripts
end
