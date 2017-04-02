# Tiny sails docker image, based on Alpine Linux

As default container starts in development mode (NODE_ENV='development'). Next command will start container for sails app, with exposed node_modules folder.
 
```bash

$ docker run -v exposed_modules:/etc/server/node_modules -v $(pwd):/etc/server -p 1337:1337 -it  westtrade/sails

```

For production we need to start container with NODE_ENV='production'

```bash

$ docker run -d -p 1337:1337 -name='My Sails App' -e='NODE_ENV=production' westtrade/sails

```

