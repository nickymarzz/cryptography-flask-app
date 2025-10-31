# 🔐 Cryptography Flask App

_An educational web app for learning cryptography through interactive examples._

---

### 🏆 Project Status

![Status](https://img.shields.io/badge/Status-Completed-green)
![Python](https://img.shields.io/badge/Python-3.10%2B-blue)
![Flask](https://img.shields.io/badge/Flask-Web%20Framework-orange)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

---

### 🧭 Overview

This is an **educational web application** built with **Flask (Python)** to help students learn about **cryptographic algorithms** in a hands-on, interactive way. It’s designed specifically for **Discrete Mathematics** courses and covers ciphers ranging from simple substitution to modern public-key cryptography. This approach makes complex cryptographic concepts easy to understand and apply in practice.[^1]

![Caesar Cipher Example](https://upload.wikimedia.org/wikipedia/commons/4/4a/Caesar_cipher_left_shift_of_3.svg "Caesar Cipher illustration")

---

### 🔧 Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/nickymarzz/cryptography-flask-app.git
    cd cryptography-flask-app
    ```

2.  **Create a virtual environment and install dependencies:**
    ```bash
    python -m venv venv
    source venv/bin/activate  # On Windows, use `venv\Scripts\activate`
    pip install -r requirements.txt
    ```
    *(Note: If `requirements.txt` does not exist, you can create it with `pip freeze > requirements.txt` after installing Flask.)*

---

### 🚀 Usage

1.  **Run the Flask application:**
    ```bash
    flask run
    ```

2.  **Open your web browser** and navigate to `http://127.0.0.1:5000` to use the application.

---

### ⚙️ Configuration

The application requires no external configuration. However, the following settings are used internally:

| Name        | Type    | Default | Description                             |
|-------------|---------|---------|----------------------------------------:|
| `DEBUG`     | Boolean | `False` | Enables or disables Flask's debug mode. |
| `SECRET_KEY`| String  | `None`  | A secret key for session management.    |

---

### 🤝 Contributing

Contributions are welcome! This project follows the **[Contributor Covenant](https://www.contributor-covenant.org/)** code of conduct.

-   **[Submit an Issue](https://github.com/nickymarzz/cryptography-flask-app/issues)**: Report bugs or suggest new features.
-   **[View the Contributing Guide](./CONTRIBUTING.md)**: Learn how to make a contribution.

**Contribution Ideas:**
- [x] Add a new cipher algorithm (e.g., Hill Cipher).
- [x] Improve the UI/UX design and responsiveness.
- [ ] Write unit tests for the cipher functions.
- [ ] Enhance the existing documentation.

---

### 📄 License

This project is licensed under the **MIT License**. See the **[LICENSE](./LICENSE)** file for more details.

[^1]: Based on feedback from students in Discrete Mathematics courses.