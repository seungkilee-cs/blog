#!/usr/bin/env bash

# Define the list of categories
categories=("dsa" "audio" "thoughts" "dev", "life", "literature", "controversial")

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
formatted_title=$(echo "$article_title" | tr ' ' '-')

# Get the current date in Hugo's expected format (ISO 8601)
current_date=$(date '+%Y-%m-%dT%T%:z')

# Construct the path for the new article
new_article_path="content/post/${category}/${formatted_title}.md"

# Run the hugo new command
echo "Creating new Hugo post at: $new_article_path"
hugo new "$new_article_path"

# Optionally update the front matter with date and draft status using sed
# sed -i "1,10 s/^date: .*/date: $current_date/" "$new_article_path"
# sed -i '1,10 s/^draft: .*/draft: true/' "$new_article_path"

echo "New Hugo post created successfully!"
