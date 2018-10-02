module ZooInteractorsAddons
  extend ActiveSupport::Concern

  NOT_A_ZOO_ERROR = 'Impossbible de créer un docteur sans zoo'.freeze

  included do
    def check_zoo!
      unless zoo.is_a?(Zoo)
        raise_error NOT_A_ZOO_ERROR
      end
    end

    def zoo
      context.zoo
    end

    def raise_error(message)
      context.error = message
      context.fail!
    end
  end
end
