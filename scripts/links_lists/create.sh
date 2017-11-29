curl --include --request POST "http://localhost:4741/links_lists" \
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
