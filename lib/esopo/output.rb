
module Esopo
    module Output
        class << self
            def run(value_from_user)
                # file_data = File::open("./doc/#{value_from_user}.txt", "r+")::read
                sentence = IO.read("./doc/#{value_from_user}.txt") % {
                    :get_uuid => "#{Esopo::ValuesGenerator.rand_uuid(4)}",
                    :get_phone => "#{Esopo::ValuesGenerator.rand_phone(7)}",
                }
                exec("echo '#{sentence}'")
            end
        end
    end
end

# need think about format of uniqe data