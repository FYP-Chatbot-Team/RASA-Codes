#cd app/
# Start rasa server with nlu model
#rasa run --model models --enable-api --cors "*" --debug \
#         -p $PORT

#!/bin/sh

if [ -z "$PORT"]
then
  PORT=5005
fi

rasa run --enable-api --port $PORT

rasa run actions