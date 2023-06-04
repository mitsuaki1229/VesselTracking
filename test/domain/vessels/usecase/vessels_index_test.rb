# frozen_string_literal: true

require 'minitest/autorun'
require "test_helper"

module Vessels
  module Usecase
    class VesselsIndexTest < ActiveSupport::TestCase

      test 'Can see the list of vessels.' do
        Vessel.destroy_all
        Vessel.create(reference_number: '1', name: '102 SUNG SHIN', naccs_code: 'D7OP', owner_id: '13FZ 6AHSE', latest_update_user: '6AHSE', remarks: 'test remarks.')

        usecase = Vessels::Usecase::VesselsIndex.new
        vessels = usecase.exec()

        assert_equal vessels.size, 1
        assert_equal vessels[0].reference_number, 1
        assert_equal vessels[0].name, '102 SUNG SHIN'
        assert_equal vessels[0].naccs_code, 'D7OP'
        assert_equal vessels[0].owner_id, '13FZ 6AHSE'
        assert_equal vessels[0].latest_update_user, '6AHSE'
        assert_equal vessels[0].remarks, 'test remarks.'
      end
    end
  end
end
