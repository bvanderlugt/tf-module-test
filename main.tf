variable "honzo" {}
variable "create_file" {}

resource "local_file" "foo" {
  count = "${var.create_file}"
  content  = "${var.honzo}-foo-test"
  filename ="${path.module}/foo.txt"
}

