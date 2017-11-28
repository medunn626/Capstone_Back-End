curl --include --request POST "http://localhost:4741/cards" \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
--data '{
  "card": {
    "name": "'"${NAME}"'",
    "photo_url": "'"${PHOTO}"'",
    "type_of_card": "'"${TYPE}"'",
    "phone_number": "'"${PHONE}"'",
    "email": "'"${EMAIL}"'",
    "elevator_pitch": "'"${ELEVATOR_PITCH}"'"
  }
}'
