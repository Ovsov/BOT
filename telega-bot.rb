require 'telegram/bot'

token = '241467192:AAHR_0R6bmOJAYl9SLcIJjNAwHXu1ozGanE'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.sendMessage(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    end
  end
end