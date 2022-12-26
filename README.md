# Playground Lua
Playground for showing some code for Lua Language Programming .
## Requirements
- Lua 5.4 or Docker

## Use docker
First you have to build in background the container with the image from lua (The best way is using docker compose).
```
docker-compose up -d
``` 
In docker you only have run the `lua` link name with the file `main.lua`.
```
./lua main.lua
```

if the `lua` link is not working for execute permissions, you have to setup the permissions for `docker/lua` file bash.  
