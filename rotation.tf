resource "opsgenie_schedule_rotation" "testing" {
  schedule_id = "${opsgenie_schedule.testing.id}"
  name = "testing"
  start_date = "2019-11-1T18:50:00Z"
  end_date = "2019-12-20T18:00:00Z"
  type = "hourly"
  length = 8


participant {
  type = "user"
  id = "{opsgenie_user.test.id}"
}

time_restriction {
  type = "time of day"

  restriction {
  start_hour = 1
  start_min = 1
  end_hour = 10
  end_min = 1
}

}

}
