class Bike
  DEFAULT_STATUS = true

  attr_reader :status

  def initialize(status = DEFAULT_STATUS)
    @status = status
  end

  def working?
  	status
  end
end