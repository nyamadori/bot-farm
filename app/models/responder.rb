module Responder
  class << self
    def build(type, params = {})
      "responder/#{type}".classify.constantize.new(params: params)
    end
  end
end
