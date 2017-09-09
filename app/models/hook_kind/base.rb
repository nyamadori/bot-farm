module HookKind
  class Base
    include ActiveModel::Model

    attr_accessor :hook

    def triggered_by?(event)
    end
  end
end
