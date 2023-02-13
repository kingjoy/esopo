require 'securerandom'
module ValuesGenerator
    class << self
        def rand_uuid(version)
            uuid_imprint = "xxxxxxxx-xxxx-#{version}xxx-xxxx-xxxxxxxxxxxx"
            randomich = Random.new
            return imprint.split('').map {|value| value == "x" ? value = randomich.rand(16).to_s(16) : value}.join('')
        end
        def rand_phone(country_code)
            phone_imprint = "+#{country_code}xxxxxxxxxx"
            random_phone = Random.new
            return phone_imprint.split('').map {|value| value == "x" ? value = random_phone.rand(9).to_s(10) : value}.join('')
        end
    end
end

