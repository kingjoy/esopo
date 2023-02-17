# frozen_string_literal: true

module Esopo
  module Output
    class << self
      def run(value_from_user)
        # file_data = File::open("./doc/#{value_from_user}.txt", "r+")::read
        sentence = format(IO.read("./files/#{value_from_user}.txt"),
                          get_uuid: Esopo::ValuesGenerator.rand_uuid(4).to_s, get_phone: Esopo::ValuesGenerator.rand_phone(7).to_s,
                          get_number: Esopo::ValuesGenerator.rand_number.to_s).tr("\n", '')

        exec("echo '#{sentence}'")
      end
    end
  end
end

# need think about format of uniqe data
