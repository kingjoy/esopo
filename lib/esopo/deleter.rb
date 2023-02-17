# frozen_string_literal: true

module Esopo
  module DeleteFile
    class << self
      def delete_file(user_arg)
        File.delete("./files/#{user_arg}.txt") if File.exist?("./files/#{user_arg}.txt")
      end
    end
  end
end
