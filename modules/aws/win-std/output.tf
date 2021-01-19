/*
 * Copyright (c) 2020 Teradici Corporation
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

output "internal-ip" {
  value = aws_instance.win-std[*].private_ip
}

output "public-ip" {
  value = var.enable_public_ip ? aws_instance.win-std[*].public_ip : []
}
