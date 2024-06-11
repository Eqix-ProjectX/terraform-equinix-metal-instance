# terraform-equinix-metal-instance

Based on the scrum project within EMEA/APAC TAM.   Provisioning certain numbers of instances and per your need.

## :watermelon: Instruction

This will provision an instance with your demand of the OS and the numbers on the project.
In the **terraform.tfvars** in the root module you may want to specify below as a variable.

[Metal_Instance]
- `project_id`       specify the project id you are in
- `nums`             specify the # of the instances you are about to provision
- `metro`            specify certain metro where you are about to provision
- `operating_system` specify required OS for the instance you are about to provision

*hostname*, *id*, and *public_ip* for both metal will be shown per output upon completion of run.

It acts nothing more than above at the time writing the code today.   There will be more to come.

**terraform.tfvars** (sample)
```terraform
project_id         = "your_projectid"
nums               = 3
metro              = "sg"
operating_system   = "ubuntu_20_04"
core_count         = 2
metro_code         = "SG"
notifications      = ["name@equinix.com"]
package_code       = "network-essentials"
```  


>[!note]
>Declare your credential as environment variables before you run.  
>`export METAL_AUTH_TOKEN=someEquinixMetalToken`
