# frozen_string_literal: true

require 'securerandom'
require 'time'
module Esopo
  module ValuesGenerator
    class << self
      def rand_uuid(version)
        uuid_imprint = "xxxxxxxx-xxxx-#{version}xxx-xxxx-xxxxxxxxxxxx"
        reducer(uuid_imprint, 16, 16)
      end

      def rand_phone(country_code)
        phone_imprint = "+#{country_code}xxxxxxxxxx"
        reducer(phone_imprint, 10, 10)
      end

      def rand_number
        number_imprint = "xxxxxxx"
        reducer(number_imprint, 10, 10)
      end

      def current_timestamp
        Time.now.utc.iso8601
      end

      private

      def reducer(input_imprint, input_range, converter)
        input_imprint.split("").map do |value|
          value == 'x' ? value = rand(input_range).to_s(converter) : value
        end.join("")
      end
    end
  end
end
