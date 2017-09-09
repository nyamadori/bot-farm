class SlackBot
  attr_reader :token

  def initialize(token)
    @token = token
  end

  def start
    bind_handlers
    client.start_async
  end

  private

  def bind_handlers
    client.on :message do |data|
      event = Event.new(data.to_h)
      hook = event.find_hook
      hook.execute
    end
  end

  def client
    @client ||= Slack::RealTime::Client.new(token: token)
  end
end
