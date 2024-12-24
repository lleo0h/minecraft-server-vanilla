#!/bin/bash

#download server.jar
link=https://piston-data.mojang.com/v1/objects/4707d00eb834b446575d89a61a11b5d548d8c001/server.jar #1.24.4

if [ ! -e server.jar ]; then
    curl $link --output server.jar
    echo "eula=true" > eula.txt
fi

java -Xmx4096M -Xms4096M -jar server.jar nogui