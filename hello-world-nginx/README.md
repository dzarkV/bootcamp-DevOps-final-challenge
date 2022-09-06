# hello-world-nginx

# Challenges

- The golang team is complaining websockets are not working when going through the proxy but work locally
- Nginx is spawning to many workers
- The nodejs team is saying they can not reach any other endpoints except `hello`. They want to be able to add more endpoints.

Websockets failed because of the config file of proxy don't included them. You can check the config [file](docker-deps/default.conf) to see the improves. You can start them up with `docker-compose up`.
