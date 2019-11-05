resource "opsgenie_schedule_rotation" "geiger-rotation" {
  schedule_id = "${opsgenie_schedule.schedule.id}"
  name = "geigertellers schedule"
  start_date = "2019-11-1T18:50:00Z"
  end_date = "2019-12-20T18:00:00Z"
  type = "hourly"
  length = 8


participant {
  type = "user"
  id = "{opsgenie_user.first.id}"
}

time_restriction {
  type = "time-of-day"

  restriction {
  start_hour = 3
  start_min = 1
  end_hour = 10
  end_min = 1
}

}

}
