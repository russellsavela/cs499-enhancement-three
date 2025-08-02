# Russ Savela, russell.savela@snhu.edu, 2025
#
#  Enhancement Three

resource "aws_dynamodb_table" "animals_test" {
  name           = "animals_test"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "animal_id"
#  range_key      = ""

  attribute {
    name = "animal_id"
    type = "S"
  }


  ttl {
    attribute_name = "TimeToExist"
    enabled        = true
  }

  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"
 
  replica = {
    region_name = "us-west-2"
  }
  

  tags = {
    Name        = "enhancement-three"
    Environment = "dev"
  }
}




