# Setting location and log

## Scenario:
A member of your team has deployed an NGINX server and needs your help adding a custom configuration for a status page. They've asked you to help them remove the default configuration and add a new one. The new configuration needs to have one route named /complete that returns the message your request is complete. The route should exactly match the word complete in all lower case. Along with the message, NGINX needs to write each request to a log file that's separate from any other logs collected by NGINX. 