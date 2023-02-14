
module Esopo
    module CreateFiles
        class << self
            def create_doc(args)
                File::new("./doc/#{args.first}.txt", "w+")
                File::open("./doc/#{args.first}.txt", "w+") do |f|
f.write("file = <<~'EOM'
# paste here you text and delete this comm
EOM")
                end
            end 
        end
    end
end