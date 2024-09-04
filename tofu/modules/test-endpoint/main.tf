resource "time_sleep" "wait" {
  create_duration = "30s"
}

data "http" "test_endpoint" {
  url    = var.endpoint
  method = "GET"

  depends_on = [time_sleep.wait]
}

data "http" "test_healthz_endpoint" {
  url    = var.healthz_endpoint
  method = "GET"

  depends_on = [time_sleep.wait]
}