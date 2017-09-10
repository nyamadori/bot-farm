class ExecutionRequest < ApplicationRecord
  belongs_to :hook
  enum status: { waiting: 0, succeeded: 1, failed: 2, not_matched: 3 }

  def perform
    return not_matched! unless match

    self.arguments = match

    case response.status
    when 200..299
      succeeded!
    else
      failed!
    end
  end

  private

  def match
    @match ||= hook.match(event.with_indifferent_access)
  end

  def response
    @response ||= connection.post('/events') do |req|
      req.body = {
        arguments: match,
        scripts: hook.scripts.pluck(:content)
      }
    end
  end

  def connection
    @connection ||= Faraday.new(url: Settings.hook.execution_request.endpoint)
  end
end
