resource "opsgenie_user" "first" {
  username  = "first@domain.com"
  full_name = "First User"
  role      = "User"
  locale    = "no_NO"
  timezone  = "Europe/Oslo"
}

resource "opsgenie_user" "second" {
  username  = "user@domain.com"
  full_name = "First User"
  role      = "User"
  locale    = "no_NO"
  timezone  = "Europe/Oslo"
}
