module HookKind
  class Base
    include ActiveModel::Model

    attr_accessor :params

    def triggered_by?(event)
    end
  end
end
