# frozen_string_literal: true

module Esopo
  module CheckDecision
    class << self
      def user_decision(operation, user_arg)
        p "file with name #{user_arg} #{operation == 'delete' ? 'does not' : false} exist in system"
        p "#{operation} the file #{user_arg}? y/n?"
        word = $stdin.gets.chomp
        return if word == 'n'

        if operation == 'owerwrite'
          Esopo::DeleteFile.delete_file(user_arg)
          sleep(0.2)
          Esopo::CreateFiles.create_doc(user_arg)
        else
          word == 'delete'
          Esopo::DeleteFile.delete_file(user_arg)
        end
      end
    end
  end
end
