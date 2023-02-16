
def gen_uuid(input_version)
    return Esopo::ValuesGenerator.rand_uuid(input_version)
end

def gen_phone(input_code)
    return Esopo::ValuesGenerator.rand_phone(input_code)
end

# the file is designed for convenient interpolation inside the document