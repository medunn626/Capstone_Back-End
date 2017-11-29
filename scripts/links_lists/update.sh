curl --include --request PATCH "http://localhost:4741/links_lists/${ID}" \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
--data '{
  "links_list": {
    "linkedin": "'"${LINKEDIN}"'",
    "facebook": "'"${FACEBOOK}"'",
    "instagram": "'"${INSTAGRAM}"'",
    "twitter": "'"${TWITTER}"'",
    "other": "'"${OTHER}"'",
    "card_id": "'"${CARD_ID}"'"
  }
}'
