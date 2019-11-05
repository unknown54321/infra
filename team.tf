resource "opsgenie_user" "first" {
  username  = "unknown98765432112345"
  full_name = "Unknown Tester "
  role      = "Admin"
}

resource "opsgenie_team" "test" {
  name        = "A Team"
  description = "This team deals with developement"

  member {
  id   = "${opsgenie_user.first.id}"
  role = "admin"
}
}
