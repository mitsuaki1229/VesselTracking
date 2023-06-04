# frozen_string_literal: true

module Vessels
  module Usecase
    class VesselsIndex

      def exec()
        Vessel.all
      end
    end
  end
end
