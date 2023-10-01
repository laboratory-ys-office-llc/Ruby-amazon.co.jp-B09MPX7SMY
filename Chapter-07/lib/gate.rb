class Gate
  STATIONS = %i[umeda juso mikuni].freeze
  FARES = [160, 190].freeze

  attr_reader :name
  def initialize(name)
    @name = name
  end

  def enter(ticket)
    ticket.stamp(@name)
  end

  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamp_at)
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance - 1]
  end
end
