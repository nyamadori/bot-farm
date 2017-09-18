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
    client.on :message do |event|
      hook = Hook.find_from(event)
      hook&.perform(event)
    end
  end

  def client
    @client ||= Slack::RealTime::Client.new(token: token)
  end
end
