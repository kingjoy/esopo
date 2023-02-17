# frozen_string_literal: true

def gen_uuid(input_version)
  Esopo::ValuesGenerator.rand_uuid(input_version)
end

def gen_phone(input_code)
  Esopo::ValuesGenerator.rand_phone(input_code)
end

# the file is designed for convenient interpolation inside the document
