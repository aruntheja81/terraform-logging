resource "aws_cloudwatch_log_subscription_filter" "cwlogs-es" {
  name            = "lambda_cwlogs_to_elasticsearch_${var.environment}"
  log_group_name  = "${var.log_group_name}"
  filter_pattern  = ""
  destination_arn = "${aws_lambda_function.lambda.arn}"
}

resource "aws_cloudwatch_log_group" "lambda" {
  name = "/aws/lambda/lambda_cwlogs_to_elasticsearch_${var.environment}"

  retention_in_days = "${var.retention_in_days}"
}
