#!/bin/bash

API="http://localhost:4741"
URL_PATH="/exercises"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
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
