# frozen_string_literal: true

module Esopo
  module Output
    class << self
      def run(value_from_user)
        sentence = format(IO.read("./files/#{value_from_user}.txt"),
                          get_uuid: Esopo::ValuesGenerator.rand_uuid(4).to_s, 
                          get_phone: Esopo::ValuesGenerator.rand_phone(7).to_s,
                          get_number: Esopo::ValuesGenerator.rand_number.to_s,
                          get_timestamp: Esopo::ValuesGenerator.current_timestamp,
                          get_variable: $var).gsub(/^\s+|\s+$|\s^/,"").tr("\n", "").gsub(/:\s/, ':')
        puts "Your result", "\u2193".encode('utf-8'), sentence
      end
      def recorder(var)
        $var = var
      end
      def dynamic_var
        return $var
      end
    end
  end
end
