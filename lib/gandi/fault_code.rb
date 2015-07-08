require 'gandi/fault_code/data'
require 'gandi/fault_code/server'
require 'gandi/fault_code/unknown'

module Gandi
  class FaultCode
    QUALIF = {Server::QUALIF => Server, Data::QUALIF => Data}

    def self.parse(code, msg = nil)
      qualif = code / 100000
      object = code % 100000 / 100
      cause = code % 100

      klass = QUALIF.key?(qualif) ? QUALIF[qualif] : Unknown
      klass.new(object, cause, msg)
    end

    attr_reader :object, :cause, :msg

    def initialize(object, cause, msg = nil)
      @object = self.class::OBJECT[object] || :object_invalid
      @cause = self.class::CAUSE[cause] || :cause_invalid
      @msg = msg
    end

    def exception
      self.class::ERROR.new(msg, self)
    end
  end
end
