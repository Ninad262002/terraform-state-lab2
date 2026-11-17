

# Bucket ka naam globally unique hona chahiye, isliye random suffix
resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "demo" {
  bucket = "tfstate-lab-demo-${random_id.suffix.hex}"

  tags = {
    Project   = "terraform-state-lab"
    ManagedBy = "terraform"
  }
}

# Phase 2 practice resource (Task 2.2 mein rename hoga)
resource "aws_s3_bucket" "rescued" {
  bucket = "tfstate-lab-practice2-9b21e07a"

  tags = {
    Project   = "terraform-state-lab"
    ManagedBy = "terraform"
  }
}

import {
  to = aws_s3_bucket.rescued
  id = "tfstate-lab-practice2-9b21e07a"
}



resource "aws_s3_bucket" "drift_test" {
  bucket = "tfstate-lab-drift-${random_id.suffix.hex}"

  tags = {
    Project     = "terraform-state-lab"
    ManagedBy   = "terraform"
    Environment = "dev"
  }
}