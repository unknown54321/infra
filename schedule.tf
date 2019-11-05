resource "opsgenie_schedule" "testing" {
  name        = "genieschedules"
  description = "schedule test"
  timezone    = "Europe/Oslo"
  enabled     = true
}
