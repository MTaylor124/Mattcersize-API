#!/bin/bash

API="http://localhost:4741"
URL_PATH="/exercises"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "exercise": {
      "name": "'"${NAME}"'",
      "sets": "'"${SETS}"'",
      "reps": "'"${REPS}"'",
      "weight": "'"${WEIGHT}"'",
      "workout": "'"${WORKOUT}"'"
    }
  }'
echo
