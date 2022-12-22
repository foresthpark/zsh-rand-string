rand-string() {
  local length=${1:-12}
  local result=""
  local characters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+-="

  for i in $(seq 1 $length); do
    result+=${characters:$((RANDOM % ${#characters})):1}
  done

  echo "$result"
}
