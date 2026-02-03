#!/usr/bin/env bash
set -euo pipefail

TEMPLATE_FILES=$(find templates -name "*.toml")
EXIT_CODE=0

echo "🔍 Validating templates..."

for file in $TEMPLATE_FILES; do
  echo "---------------------------------------------------"
  echo "Checking: $file"
  
  # We use MISE_CONFIG_FILE to force mise to load the specific template
  # We use 'ls' to ensure mise can parse it and resolve versions
  if MISE_CONFIG_FILE="$file" mise ls > /dev/null; then
    echo "✅ Valid"
  else
    echo "❌ Invalid"
    EXIT_CODE=1
  fi
done

echo "---------------------------------------------------"
if [ $EXIT_CODE -eq 0 ]; then
  echo "🎉 All templates passed validation!"
else
  echo "💥 Some templates failed validation."
fi

exit $EXIT_CODE
