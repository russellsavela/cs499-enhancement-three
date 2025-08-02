# cs-499-enhancement-three
CS-499 Database enhancement three.

This implements the Database Enhancement, which consists of 
refactoring the CRUD code from CS 430 to use DynamoDB, 
the implementation of unit tests for these refactored functions,
and Terraform to deploy the database.

It is important to note that this is deployed separately from the 
application and infrastructure code, this is intentional. Other than
for a DR or test environment initial configuration, it is not a normal
operation to redeploy the database layer when code changes are made to an
application.
