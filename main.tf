
module "enabled" {
  source  = "git::https://git@github.com/ahmadzaikk/terraform-local-boolean.git"
  version = "0.1.2"
  value   = "${var.enabled}"
}

 
resource "aws_ecs_cluster" "this" {
  count = "${module.enabled.value}"
  name = join("-", [var.name, "cluster"])
  tags = var.tags
}
