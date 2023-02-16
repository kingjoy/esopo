
module Esopo
    module CreateFiles
        class << self
            # create doc wrom user input
            def create_doc(user_arg)
                # checker existing files in dir
                if File::exist?("./doc/#{user_arg}.txt")
                    p "file with name #{user_arg} exist in system"
                    p "overwrite the file #{user_arg}? y/n?"
                    overwrite_file(user_decision, user_arg)
                else
                    File::new("./doc/#{user_arg}.txt", "w+")
                    File::open("./doc/#{user_arg}.txt", "w+") do |f|
                    f.write("file = <<-EOM
                        # paste here you text and delete this comm
                    EOM")
                    end
                    open_file(user_arg)
                end
            end 
            # owerwrite files
            def overwrite_file(decision, user_arg)
                if decision.downcase == 'y'
                    File::delete("./doc/#{user_arg}.txt")
                    create_doc(user_arg)
                else
                    false
                end
            end
            # open files use term command
            def open_file(user_arg)
                return exec("open ./doc/#{user_arg}.txt")
            end
            # user_decision about some task(y/n)
            def user_decision
                word = STDIN.gets.chomp
            end
        end
    end
end