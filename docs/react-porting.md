# Porting `github-style` Theme to a React + TypeScript Site

## Overview
This guide explains how to reuse the visual language and interactions of the `github-style` Hugo theme within a custom React/TypeScript application that powers a blog section. It focuses on asset extraction, component structure, data flow, and feature parity.

## Asset Extraction
- **Theme CSS**: Copy `themes/github-style/static/css/frameworks.min.css` and `themes/github-style/static/css/github-style.css` to your React project (e.g., `src/styles/`). Import them once in the root component or entry file (`import './styles/github-style.css';`).
- **Static assets**: Move required icons/images from `themes/github-style/static/` (such as favicons or avatars) into your React app’s `public/` directory to maintain URL paths.
- **Theme toggler JS**: Port logic from `themes/github-style/static/js/theme-mode.js` into a React hook/context to manage light/dark mode state via `document.documentElement.dataset.theme` and `localStorage`.

## Component Structure
- **Layout wrapper**: Translate `themes/github-style/layouts/_default/baseof.html` into a React `Layout` component that includes `<Header>`, `<Main>`, and `<Footer>` regions using original class names.
- **Blog list**: Use markup from `themes/github-style/layouts/_default/list.html` to create a `BlogList` component rendering post summaries, dates, tags, and pin badges.
- **Blog post**: Reproduce `themes/github-style/layouts/_default/single.html` as a `BlogPost` component with metadata, Table of Contents (if desired), and navigation links. Preserve class names so CSS applies correctly.
- **Partials**: Convert reusable fragments in `themes/github-style/layouts/partials/` (e.g., `head.html`, `sidebar.html`, `post-nav.html`) into React components to maintain consistent structure.

## Content Data Pipeline
- **Markdown ingestion**: Store blog content as Markdown with front matter mirroring Hugo fields (`title`, `date`, `summary`, `pin`, `katex`, `mathJax`, `categories`, `tags`). Parse with libraries such as `gray-matter` + `remark`, or adopt MDX if interactivity is required.
- **Routing**: Implement routes like `/post/<category>/<slug>` using React Router or Next.js dynamic routes. Ensure slug generation aligns with Hugo’s file-based convention.
- **Collections**: Generate category/tag indexes by filtering parsed content at build time (static site) or on the server (SSR).

## Feature Parity
- **Search**: Re-create Hugo’s Fuse.js-based local search by generating a JSON index during build and consuming it within a React `SearchModal` component.
- **Comments**: Integrate Gitalk or another comment solution (Giscus, Disqus) if you require the original theme’s discussion feature. For Gitalk, load the widget in a React effect when the post renders.
- **Math rendering**: When front matter specifies `katex` or `mathJax`, dynamically load the respective libraries and run rendering hooks (`renderMathInElement` for KaTeX or `MathJax.typesetPromise()`).
- **Pinned posts**: Surface posts where `pin: true` at the top of the listing, matching theme behavior.

## Build & Deployment
- **Bundler configuration**: Ensure your bundler handles CSS imports and asset paths. For Next.js, add CSS files in `_app.tsx`; for Vite/CRA, import them in `main.tsx` or `App.tsx`.
- **Static asset copying**: Automate copying of theme assets (CSS/JS/images) into your React project via scripts if you plan to pull upstream updates from `themes/github-style`.
- **Environment variables**: Manage configuration such as Gitalk credentials or analytics IDs through `.env` files and expose them via your framework’s environment system.

## Recommended Actions
- **[Inventory assets]** List the theme CSS/JS/images you intend to reuse and copy them into the React project, maintaining the same class names.
- **[Create layout components]** Build React counterparts for `baseof.html`, `list.html`, `single.html`, and key partials to ensure markup matches theme expectations.
- **[Set up content loader]** Choose a Markdown/MDX pipeline that preserves Hugo front matter fields and produces a typed interface for posts.
- **[Implement interactivity]** Port theme mode toggling, search, and optional Gitalk integration using React hooks and context/state.
- **[Validate styling]** Spin up the React dev server and compare pages to the Hugo site, adjusting class names or structure as needed for perfect fidelity.
