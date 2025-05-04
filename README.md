# Docs in Style: A Minimal Documentation Framework with MkDocs and GitHub Pages

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Abstract

*Docs in Style* is a lightweight template repository for constructing and publishing documentation sites using [MkDocs](https://www.mkdocs.org) and the [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) theme. It is intended to serve as an educational reference and reproducible starting point for individuals and organizations implementing documentation-as-code workflows. Deployment is managed through GitHub Actions with output hosted on a dedicated GitHub Pages branch (`gh-deploy`).

---

## 1. Objectives

- Provide a minimal MkDocs environment with common plugins and visual enhancements
- Support continuous integration (CI) pipelines via GitHub Actions
- Demonstrate both automated and manual deployment mechanisms
- Encourage clean separation between documentation source (`main`) and static site output (`gh-deploy`)

---

## 2. Repository Structure

```plaintext
docs-in-style/
├── docs/                     # Markdown documentation files
│   └── index.md
├── .github/workflows/        # CI workflow configuration
│   └── deploy.yml
├── mkdocs.yml                # Site configuration
├── requirements.txt          # Python dependencies
├── Makefile                  # Local build and deployment commands
└── README.md                 # Project description and usage
```

---

## 3. Installation & Setup

### 3.1. Local Setup

```bash
make init     # Create virtual environment and install dependencies
make serve    # Start local development server
make build    # Build static site into ./site/
```

### 3.2. Manual Deployment

```bash
make deploy-gh-deploy    # Push contents of site/ to the gh-deploy branch
```

---

## 4. Continuous Deployment

This repository includes a GitHub Actions workflow that triggers on changes to the `main` branch. It performs the following:

1. Checks out the repository source
2. Sets up a Python environment
3. Installs dependencies from `requirements.txt`
4. Builds the MkDocs site
5. Publishes the output in the `gh-deploy` branch using [`peaceiris/actions-gh-pages`](https://github.com/peaceiris/actions-gh-pages)

Ensure the repository settings allow workflows to write to GitHub Pages:
- Settings → Actions → General → Workflow permissions → **Read and write**

---

## 5. Deployment URL

Once activated under:
> Settings → Pages → Source: `gh-deploy` / `(root)`

The site becomes available at:
```
https://<your-username>.github.io/docs-in-style/
```

---

## 6. Dependencies

Defined in `requirements.txt`:
```txt
mkdocs-material
mkdocs-glightbox
mkdocs-minify-plugin
mkdocs-git-revision-date-localized-plugin
mkdocs-awesome-pages-plugin
```

---

## 7. License

This project is licensed under the [MIT License](./LICENSE).

---

```
https://secretvpc.github.io/docs-in-style/

```

---

