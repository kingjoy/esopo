# frozen_string_literal: true

module Esopo
  FILE_PATH = "#{__dir__}/files"
  module CreateFiles
    class << self
      # create doc wrom user input
      def create_doc(user_arg)
        # checker existing files in dir
        if File.exist?("#{FILE_PATH}/#{user_arg}.txt")
          Esopo::CheckDecision.user_decision('owerwrite', user_arg)
        else
          File.new("#{FILE_PATH}/#{user_arg}.txt", 'w+')
          File.open("#{FILE_PATH}/#{user_arg}.txt", 'w+') do |f|
            f.write("
                        # paste here you text and delete this comm
                    ")
            f.close
          end
          open_file(user_arg)
        end
      end

      # open files use term command
      def open_file(user_arg)
        exec("open #{FILE_PATH}/#{user_arg}.txt")
      end
    end
  end
end
