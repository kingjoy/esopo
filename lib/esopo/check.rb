# frozen_string_literal: true

module Esopo
  DEL_OPERATION = 'delete'
  OVER_OPERATION = 'overwrite'
  module CheckDecision
    class << self
      def user_decision(operation, user_arg)
        p "file with name #{user_arg} #{'does not' if operation == 'delete'} exist in system", "#{operation} the file #{user_arg}? y/n?"
        word = $stdin.gets.chomp
        return if word == 'n'

        if operation == OVER_OPERATION
          Esopo::DeleteFile.delete_file(user_arg)
          sleep(0.2)
          Esopo::CreateFiles.create_doc(user_arg)
        else
          word == DEL_OPERATION
          Esopo::DeleteFile.delete_file(user_arg)
        end
      end
    end
  end
end
