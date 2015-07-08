module Gandi
  class FaultCodeError < StandardError
    attr_reader :fault_code

    def initialize(msg, fault_code)
      super msg
      @fault_code = fault_code
    end
  end

  class DataError < FaultCodeError; end
  class ServerError < FaultCodeError; end
  class UnknownError < FaultCodeError; end
end
