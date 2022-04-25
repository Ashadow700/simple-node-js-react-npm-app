CONTAINER_NAME="my-react-container"

OLD="$(docker ps --all --quiet --filter=name="$CONTAINER_NAME")"
if [ -n "$OLD" ]; then
  echo 'removing old'
  docker stop $OLD
fi

echo 'running my deliver'
docker run -i --rm --name $CONTAINER_NAME --detach -p 3005:3005 -e CHOKIDAR_USEPOLLING=true node:react-test
