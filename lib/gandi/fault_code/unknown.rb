module Gandi
  class FaultCode
    class Unknown < FaultCode
      ERROR = Gandi::UnknownError

      OBJECT = {}
      CAUSE = {}
    end
  end
end
