resource "aws_ecs_cluster" "this" {
  name = join("-", [var.name, "cluster"])
  tags = var.tags
}
