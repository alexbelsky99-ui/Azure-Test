#!/bin/bash
# Run this at the start of every Cloud Shell session
cd ~/azure-tailscale-demo/terraform
cat > terraform.tfvars << 'EOF'
tailscale_api_key    = "tskey-api-k6LGWat54f11CNTRL-DQEev7NaWoJvWKhBJNh2pJqgUbAcEZKmT"
tailscale_tailnet    = "alexbelsky99@gmail.com"
location             = "westus2"
admin_username       = "azureuser"
vm_size              = "Standard_D2as_v7"
resource_group_name  = "rg-tailscale-demo"
vnet_cidr            = "10.0.0.0/16"
public_subnet_cidr   = "10.0.1.0/24"
private_subnet_cidr  = "10.0.2.0/24"
EOF
echo 'admin_ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDYwVNMFrg73dh2+SP0TybWR1SICCHyhiPB3/wGAQRKMDb3znC98ZqvPPRj3AzGnUDDFeBDhgza84ECtN9+hvpMoFBUQyQcBzqL3hwzhlxz5AFKSh1uxQuj8pxHhn5uwnmtVyavLlYYmMetNI7wsSWxCmYrdiPus4rvgsLV1lcjJ2H04dpiy6u7pth3laDqVsHq7ub5DhPNb/5TPPjrknuJfTZ+HsC8t9+yOl8gDH1hZlYvrPUxuGP957vLChDEHVr5+SdFkpBWh4gbNKFCIx8SPEvq1kXKSZVJOC41erUTitHBBUkhKtvpfSyjnAd4zeyoBckpL847Iky06NvLrnGZqYccl42W/bco4cN2JM3ZlX/ey8umNSgrwjDEDISuRjenrcHDmqHUt9oWv7kf0wLdkH0+II+qOFETMntiBJN8xvQvkKbN3w+7cgVYhSvQIlgcTVClDRIPSc//raZfjgqcQU6t25mvDt7oGvkeATmHsMUsFTzD9UBdWaLRjC4q1WLuLWGjWxb8Rvo4OcMD7809vBh3Rh44OZN7vtGacVHhPJxLUKONqI/ZfguLHkmeZdFTI1WncHwbahyrML2/wbhWUjPh9lkhCmspuQpkOpjyKBF6ywklx0DKLGvLxwwXyANR91dzdGRsZbTuZeX64VxAzT/5heinUE0MKEt9kYOPhw== alexanderbelsky@AlexandersMBP2.home.local"' >> terraform.tfvars
terraform init
echo "Ready. Run: terraform plan or terraform apply -auto-approve"
