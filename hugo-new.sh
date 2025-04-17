#!/usr/bin/env bash

# Define the list of categories
categories=("dsa" "audio" "thoughts" "dev" "life" "literature" "controversial" "stationary" "philosophy" "economics")

# Prompt the user to select a category
echo "Select a category:"
select category in "${categories[@]}"; do
  if [[ -n "$category" ]]; then
    echo "You selected: $category"
    break
  else
    echo "Invalid selection. Please try again."
  fi
done

# Prompt the user to enter the new article title
read -p "Enter the new article title: " article_title

# Format the article title by replacing spaces with hyphens (-)
# formatted_title=$(echo "$article_title" | tr ' ' '-')
formatted_title=$(echo "$article_title" | sed -e 's/ /-/g' -e 's/:/%3A/g' -e "s/'/%27/g")

# Get the current date in Hugo's expected format (ISO 8601)
# current_date=$(date '+%Y-%m-%dT%T%:z')

# Construct the path for the new article
new_article_path="content/post/${category}/${formatted_title}.md"

# Run the hugo new command
echo "Creating new Hugo post at: $new_article_path"
hugo new "$new_article_path"

echo "New Hugo post created successfully!"
