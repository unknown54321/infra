resource "opsgenie_schedule" "schedule" {
  name        = "gegerteller"
  description = "schedule test for measurements"
  timezone    = "Europe/Oslo"
  enabled = false
  owner_team_id = "${opsgenie_team.geigerteam.id}"
}
