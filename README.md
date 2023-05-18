# Highly-Available-Web-Application-Deployment-on-AWS-with-Terraform-and-Ansible
project that involved building a High Availability Web Application from A to Z using Fully Automated tools.

The goal was to deliver a website that could serve traffic with minimum downtime, handle spikes in load, and scale automatically.

Here's a breakdown of the key steps I followed in this project :

— Created a Terraform module that provisions an Amazon VPC, including subnets spread across multiple Availability Zones. This setup forms the foundation for our highly available architecture.

— Leveraged the power of Terraform to launch EC2 instances in each subnet. Additionally, I configured an Elastic Load Balancer to effectively distribute traffic between these instances, ensuring optimal performance and reliability.

— Utilized Ansible to automate the configuration of our web servers. By deploying Nginx and PHP-FPM, I ensured a stable and efficient runtime environment for our web application. Furthermore, I seamlessly deployed a sample web application, showcasing the power of automation.

— Implemented autoscaling using Amazon EC2 Auto Scaling, a crucial component of our high availability setup. By dynamically adjusting the number of instances based on traffic, we achieved optimal resource utilization and scalability.

— Integrated Amazon RDS to store the web application data securely. I expertly configured the web servers to seamlessly connect to the database, ensuring data integrity and efficient access.

Overall, this project improved the reliability and scalability of the application while lowering management overhead through infrastructure as code. The skills and practices gained will move me closer to becoming a valuable DevOps engineer and help future infrastructure automation initiatives.
