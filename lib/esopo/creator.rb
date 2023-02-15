
module Esopo
    module CreateFiles
        class << self
            def create_doc(args)
                File::new("./doc/#{args.first}.txt", "w+")
                File::open("./doc/#{args.first}.txt", "w+") do |f|
f.write("file = <<-EOM
    # paste here you text and delete this comm
EOM")
                end
                open_file(args)
            end 
            def open_file(args)
                return exec("open ./doc/#{args.first}.txt")
            end
        end
    end
end