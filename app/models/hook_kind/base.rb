module HookKind
  class Base
    include ActiveModel::Model

    def triggered_by?(event)
    end
  end
end
