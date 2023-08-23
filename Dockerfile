FROM        node
RUN         mkdir /app
WORKDIR     /app
COPY        node_modules/ node_modules/
COPY        server.js .
COPY        docker/rusn.sh .
ENTRYPOINT  [ "bash", "run.sh" ]