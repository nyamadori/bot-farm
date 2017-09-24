# frozen_string_literal: true

crumb :root do
  link 'Home', '/'
end

crumb :bots do
  parent :root
  link 'Bots', bots_path
end

crumb :bot do |bot|
  parent :bots
  link bot.name, bot_path(bot)
end

crumb :new_bot do
  parent :bots
  link 'New', new_bot_path
end

crumb :edit_bot do |bot|
  parent :bot, bot
  link 'Edit', bot_path(bot)
end
