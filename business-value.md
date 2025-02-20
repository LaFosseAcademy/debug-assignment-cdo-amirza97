# Business Value

## Scalability
Our infrastructure can grow or shrink depending on demand.

- **Terraform:**  
  Terraform allows us to quickly create and update AWS servers using code. This makes it easy to add more servers when needed.

- **Docker:**  
  Docker runs each microservice in its own container. This means we can scale a specific service without setting up an entirely new server.

- **Ansible:**  
  Ansible automates tasks such as adding new servers, ensuring that each new server is configured in exactly the same way.

## Performance Optimisation
Using resources efficiently helps our application run smoothly.

- **Terraform:**  
  Terraform sets up AWS resources in an optimised manner, making upgrades simple and efficient.

- **Docker:**  
  Docker containers are lighter than virtual machines, so each service runs faster and in isolation.

- **Ansible:**  
  Ansible ensures our servers are always configured optimally, applying updates and restarting services when required.

## Cost Savings
We save money by using only the resources we need.

- **Terraform:**  
  Terraform provisions resources only when necessary and supports auto-scaling, reducing unnecessary expenses.

- **Docker:**  
  Docker maximises resource use by running multiple services on the same server, thereby lowering costs.

- **Ansible:**  
  Ansible automates cost-saving tasks such as shutting down idle servers and cleaning up unused images.

## Automation
Automation makes our processes efficient and reliable.

- **Terraform:**  
  Terraform automates the creation and management of our AWS servers, reducing human error.

- **Docker:**  
  Docker ensures consistency across deployments and simplifies the management of multiple containers.

- **Ansible:**  
  Ansible automates server configuration and updates across all machines, ensuring everything runs smoothly.
