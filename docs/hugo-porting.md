# Hugo Blog Porting Guide

## Overview
This document captures the current structure of the Hugo blog located at `/Users/seungkilee/Workspace/seungkilee-cs/blog/`, details about the `github-style` theme, and the recommended steps to port the site to another environment.

## Project Structure
- **Root config**: `hugo.toml` sets `baseURL`, `languageCode`, `title`, and `theme = "github-style"`.
- **Content**: `content/` holds posts arranged under `content/post/<category>/`. Each Markdown file relies on front matter for fields such as `title`, `date`, `categories`, `tags`, `pin`, `summary`, `katex`, and `mathJax`.
- **Archetypes**: `archetypes/default.md` pre-populates new posts with draft status, empty categories, and default tags.
- **Automation scripts**:
  - `hugo-new.sh` prompts for category and title, then runs `hugo new` to create `content/post/<category>/<slug>.md`.
  - `hugo-build.sh` builds with `env HUGO_ENV="production" hugo --minify -t github-style`.
  - `git-deploy.sh` runs `hugo-prebuild.sh`, `hugo-build.sh`, commits changes, pushes to a timestamped branch, merges into `master`, and cleans up.
- **Theme submodule**: `themes/github-style/` tracked via `.gitmodules`. It contains `layouts/`, `static/`, `archetypes/`, `config.template.toml`, and `theme.toml`.
- **Static output**: `public/` is the generated site after builds; it should not be edited manually.

## Theme Details (`github-style`)
- **Origin**: Git submodule referencing `git@github.com:MeiK2333/github-style.git`.
- **Layouts**: Templates under `themes/github-style/layouts/` render the blog pages. Overrides should be placed in the site-level `layouts/` directory with matching paths.
- **Static assets**: `themes/github-style/static/` provides CSS, JS, and images. Site-level `static/` files take precedence for overrides.
- **Parameters**: `themes/github-style/config.template.toml` demonstrates supported options (`[params]`, `[[params.links]]`, `params.gitalk`, search, Google Analytics). These can be mirrored in the root `hugo.toml`.
- **Features**: Supports pinned posts, collapsible blocks via `{{<details>}}`, local search (requires `[outputs]` settings), KaTeX/MathJax rendering, custom CSS/JS inclusion.

## Porting Steps
- **Clone with theme**: `git clone --recurse-submodules <repo>` ensures the `github-style` theme is pulled. If cloning without submodules, run `git submodule update --init --recursive` afterward.
- **Verify requirements**: Install Hugo (version ≥ `0.41` per `theme.toml`) and Git on the target machine.
- **Copy site files**:
  - `hugo.toml`
  - `archetypes/`, `content/`, `static/`, `assets/` (if used)
  - Theme directory via submodule checkout (`themes/github-style/`)
  - Scripts (`hugo-new.sh`, `hugo-build.sh`, `git-deploy.sh`, `hugo-prebuild.sh`, `hugo-server.sh`)
- **Update configuration**: Adjust `baseURL`, `title`, `languageCode`, and add or modify `[params]` entries in `hugo.toml` for new environment (e.g., social links, `enableSearch`, `enableGitalk`, `custom_css`, `custom_js`).
- **Prepare categories**: Ensure `content/post/<category>/` directories exist if new categories are added; update `hugo-new.sh` if the category list changes.

## Commands & Workflows
- **Local development**:
  - `hugo server -t github-style -D` to preview drafts.
  - `hugo server --disableFastRender` when changing templates.
- **Content creation**:
  - `bash hugo-new.sh` for an interactive helper.
  - Direct command: `hugo new post/<category>/<slug>.md`.
- **Production build**: `bash hugo-build.sh` or `env HUGO_ENV="production" hugo --minify -t github-style`.
- **Deployment (GitHub Pages workflow)**: `bash git-deploy.sh` (adjust branch names or remote if using `main` or other hosting targets).
- **Theme maintenance**: `git submodule update --remote --merge themes/github-style` to fetch latest theme updates; commit resulting changes in the submodule when customized.

## Customization Guidance
- **Template overrides**: Copy files from `themes/github-style/layouts/` to `layouts/` to modify them without editing the submodule directly.
- **Custom assets**: Place overrides in `static/` (e.g., `static/css/custom.css`) and register via `[params.custom_css]` or `[params.custom_js]` in `hugo.toml`.
- **Additional configs**: Enable Google Analytics or search by following snippets from `themes/github-style/config.template.toml`.
- **Internationalization**: Utilize `i18n/` if localization strings are added.

## Deployment Considerations
- **GitHub Pages**: Configure repository settings to serve from `public/` (via `gh-pages` branch or `docs/` folder) depending on workflow. `git-deploy.sh` currently targets `master`; modify if repository uses `main` or dedicated deployment branches.
- **Static hosts (Netlify/Vercel/Cloudflare)**: Set build command to `hugo --minify` and publish directory to `public/`.
- **Base URL**: Ensure `baseURL` in `hugo.toml` matches production domain to avoid broken asset links.

## Verification Checklist
- `hugo server` renders expected pages with theme assets.
- Production build (`hugo-build.sh`) completes without errors and updates `public/`.
- Theme submodule initialized (`git submodule status` shows a commit hash).
- Custom scripts executable (`chmod +x hugo-*.sh git-deploy.sh`).
- Deployment workflow matches hosting provider (branch names, credentials, tokens for Gitalk if enabled).

## Further Improvements
- Document environment-specific variables (e.g., `.env` for tokens) if adopted.
- Add CI pipeline (GitHub Actions) to run `hugo --minify` and deploy automatically.
- Expand `docs/` with tutorial on content authoring workflows and taxonomy conventions.
