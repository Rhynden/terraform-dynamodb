# Prepare terraform
terraform init
# Stage changes without actually applying them
terraform plan
# Apply the changes
# Omit auto-approve to manually review changes and approve
terraform apply --auto-approve
# destroy the created resources
# Again, omit auto-approve to manually review changes and destroy
terraform destroy --auto-approve