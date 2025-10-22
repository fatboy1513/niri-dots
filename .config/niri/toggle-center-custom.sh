SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

file="$SCRIPT_DIR/config.kdl"

if grep -q '^\s*//\s*center-focused-column "always"' "$file"; then
  sed -i 's|^\(\s*\)//\s*\(center-focused-column "always"\)|\1\2|' "$file"
else
  sed -i 's|^\(\s*center-focused-column "always"\)|//\1|' "$file"
  niri msg action maximize-column
  sleep 0.45
  niri msg action maximize-column
fi
