# Rails 7 + SQLite + Bootstrap + jQuery (GitHub Codespaces Ready) 🚀

This repository provides an out-of-the-box Ruby on Rails 7 application configured with SQLite, Bootstrap 5, and jQuery, pre-configured to run directly inside **GitHub Codespaces**.

---

## 🌟 Highlights

- **Ruby 3.3 & Rails 7.1**
- **SQLite 3**: Zero external database dependencies or server processes required.
- **Bootstrap 5.3 & Icons**: Responsive modern UI.
- **jQuery 4**: Fully integrated and globally available (`$` and `window.jQuery`).
- **Modern Asset Pipeline**: Utilizes Rails Importmaps (no heavy Webpack / Node.js build overhead).
- **GitHub Codespaces Ready**: Full `.devcontainer` configuration with automated dependency installation and port forwarding (port 3000).

---

## 🚀 Running on GitHub Codespaces (1-Click Setup)

1. Create a new GitHub repository and push this folder:
   ```bash
   git add .
   git commit -m "Initial commit with Codespaces config"
   git remote add origin https://github.com/<your-username>/<your-repo-name>.git
   git branch -M main
   git push -u origin main
   ```
2. On your GitHub repo page:
   - Click the green **Code** button.
   - Switch to the **Codespaces** tab.
   - Click **Create codespace on main**.
3. Codespaces will build the environment and run `bundle install` and `db:prepare` automatically.
4. In the Codespaces terminal, start the server:
   ```bash
   bin/rails server -b 0.0.0.0
   ```
5. A notification will appear allowing you to open port 3000 in your browser!

---

## 💻 Running Locally on macOS

```bash
# Ensure dependencies are installed
bundle install

# Prepare database
bin/rails db:prepare

# Start the Rails server
bin/rails server
```
Then visit: `http://localhost:3000`

---

## 📂 Key Files & Architecture

- `.devcontainer/devcontainer.json`: Automated Codespaces container configuration.
- `config/importmap.rb`: JavaScript import mappings for jQuery, Bootstrap, and Turbo.
- `app/javascript/application.js`: Global initialization of jQuery and Bootstrap.
- `app/views/layouts/application.html.erb`: Base layout with Bootstrap styles & icons.
- `app/views/home/index.html.erb`: Interactive verification sandbox for jQuery, Bootstrap, and SQLite.
