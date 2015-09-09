module Gandi
  class FaultCode
    class Server < FaultCode
      QUALIF = 1
      ERROR = Gandi::ServerError

      OBJECT = {
        0 => :object_unknown,
        100 => :object_database,
        200 => :object_registries,
        300 => :object_network,
        400 => :object_system,
        500 => :object_application,
        600 => :object_service,
        601 => :object_comodo_api,
      }
      CAUSE = {
        0 => :cause_unknown,
        4 => :cause_toomany,
        5 => :cause_unavailable,
        10 => :cause_connection,
        20 => :cause_query,
        30 => :cause_conf,
      }
    end
  end
end
