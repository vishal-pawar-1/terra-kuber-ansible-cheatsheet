resource "aws_key_pair" "<any_key_name>" {
    key_name = "<any_key_name>"
    public_key = file("<any_key_name>.pub")
  
}


# ssh-keygen 