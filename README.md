# docs-in-style

A quick-start MkDocs + Material guide with modern styling and dual deployment options.

## 🚀 Usage

```bash
make init    # setup virtualenv and install dependencies
make serve   # run local server on http://127.0.0.1:8000
make build   # build static site
make deploy-gh-deploy  # manually deploy to gh-deploy branch
```

## 🌐 Deployment Options

### ✅ GitHub Pages (gh-deploy branch)

This project is configured to build from `main` and publish to the `gh-deploy` branch using GitHub Actions.

### ✅ Manual Deployment

You can also deploy manually with:

```bash
make build
make deploy-gh-deploy
```

## 🔁 CI/CD

Automatic deployment is handled via `.github/workflows/deploy.yml`.

## 🧩 Plugins Used

- search
- glightbox
- git-revision-date-localized
- minify
- awesome-pages
