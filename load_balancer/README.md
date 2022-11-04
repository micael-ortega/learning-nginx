# Setting up a load balancer using NGINX :balance_scale:

## Scenario:

Your company has developed a cloud service for generating universally unique identifiers, also known as UUIDs. Your team is concerned that once the service gets rolled out, they won't be able to take the service offline for updates. You've been asked to demonstrate how the UUID generator can be placed behind a load balancer, so that changes can be made without disrupting any requests to the service. One of the developers on your team has shared a script that simulates how the UUID generator can run on multiple servers, but they need your help setting up the load balancer. 

## Demo results:
![](https://github.com/micael-ortega/learning-nginx/tree/main/load_balancer/demo.gif)