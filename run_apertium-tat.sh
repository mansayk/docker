#!/bin/sh

#docker build -t apertium . -f Dockerfile
docker build -t apertium-tat . -f apertium-tat.Dockerfile

#docker run --rm -i -t --user user apertium-tat echo "безнең кешеләр"
#echo "Безнең табигатебез бик матур иде!" | docker run --rm -i --user user apertium-tat cat -

#docker pull apertium/base
#docker pull apertium/apertium-tat
