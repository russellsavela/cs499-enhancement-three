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

  tags = {
    Name        = "enhancement-three"
    Environment = "dev"
  }
}
