resource "opsgenie_team" "geigerteam" {
  name        = "Geiger Team"
  description = "Working on measurements"

  member {
  id   = "${opsgenie_user.first.id}"
  role = "admin"
}
  member {
  id   = "${opsgenie_user.second.id}"
  role = "user"
  }

}
