# frozen_string_literal: true

module Esopo
  module DeleteFile
    class << self
      def delete_file(user_arg)
        File.delete("#{FILE_PATH}/#{user_arg}.txt") if File.exist?("#{FILE_PATH}/#{user_arg}.txt")
      end
    end
  end
end
