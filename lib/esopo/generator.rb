require 'securerandom'
module Esopo
    module ValuesGenerator
        class << self
            def rand_uuid(version)
                uuid_imprint = "xxxxxxxx-xxxx-#{version}xxx-xxxx-xxxxxxxxxxxx"
                return reducer(uuid_imprint, 16, 16)
            end
            def rand_phone(country_code)
                phone_imprint = "+#{country_code}xxxxxxxxxx"
                return reducer(phone_imprint, 9, 10)
            end
            private 
                def reducer(input_imprint, input_range, converter)
                    init_value = Random.new
                    return input_imprint.split('').map {|value| value == "x" ? value = init_value.rand(input_range).to_s(converter) : value}.join('')
                end
        end
    end
end