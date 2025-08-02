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

  attribute {
    name = "age_upon_outcome_in_weeks"
    type = "N"
  }

  attribute {
    name = "animal_type"
    type = "S"
  }

  attribute {
    name = "breed"
    type = "S"
  }

  attribute {
    name = "color"
    type = "S"
  }

  attribute {
    name = "date_of_birth"
    type = "S"
  }

  attribute {
    name = "datetime"
    type = "S"
  }

  attribute {
    name = "location_lat"
    type = "N"
  }

  
  attribute {
    name = "location_long"
    type = "N"
  }


  attribute {
    name = "monthyear"
    type = "S"
  }


  attribute {
    name = "name"
    type = "S"
  }

  attribute {
    name = "outcome_subtype"
    type = "S"
  }

  attribute {
    name = "outcome_type"
    type = "S"
  }

  attribute {
    name = "rec_num"
    type = "N"
  }

  attribute {
    name = "sex_upon_outcome"
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
