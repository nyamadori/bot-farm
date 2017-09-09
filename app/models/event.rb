class Event
  attr_reader :attributes

  with_options to: :attributes do
    delegate :team
    delegate :channel
    delegate :user
    delegate :type
  end

  def initialize(attrs)
    @attributes = Hashie::Mash.new(attrs)
  end

  def find_hook
    Hook.where(kind: type).find_each.find { |hook| hook.triggered_by?(attributes) }
  end
end
