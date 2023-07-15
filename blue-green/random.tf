# create a random pet name
resource "random_pet" "random_name" {
  length    = 2
  separator = "-"
}