module Responder
  class Base
    include ActiveModel::Model

    attr_accessor :params

    def match?(event)
    end
  end
end
