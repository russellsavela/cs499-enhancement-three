# Russ Savela, russell.savela@snhu.edu, 2025
#
#  Enhancement Three

resource "aws_dynamodb_table" "animals_test" {
  name           = "animals_test"
  stream_view_type = "NEW_AND_OLD_IMAGES"
  stream_enabled   = true
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "animal_id"
#  range_key      = ""

  attribute {
    name = "animal_id"
    type = "S"
  }

  replica = {
    region_name = "us-west-2"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = true
  }

  tags = {
    Name        = "enhancement-three"
    Environment = "dev"
  }
}




