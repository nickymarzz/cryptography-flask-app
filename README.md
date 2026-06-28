# Cryptography Flask App

![Python](https://img.shields.io/badge/Python-3.10%2B-blue)
![Flask](https://img.shields.io/badge/Flask-Web%20Framework-orange)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

An educational Flask application for exploring classical and introductory
public-key cryptography through interactive web forms.

## Overview

Cryptography Flask App is designed to help students and beginners understand how
common cryptographic algorithms work in practice. The application provides a
simple browser-based interface for experimenting with encryption, decryption,
and key generation workflows.

This repository is intended primarily for learning and local development rather
than production deployment.

## Features

- Interactive pages for multiple cipher demonstrations
- Browser-based encryption and decryption workflows
- Educational examples suitable for classroom or self-study use
- Custom error pages for common application errors
- Lightweight Flask setup with minimal dependencies

## Supported Ciphers

The application currently includes pages and routes for:

- Caesar cipher
- Vigenere cipher
- Affine cipher
- RSA

## Project Structure

```text
.
|-- app.py
|-- ciphers.py
|-- requirements.txt
|-- static/
`-- templates/
```

- `app.py` contains the Flask routes and request handling logic.
- `ciphers.py` contains the cipher implementations used by the web interface.
- `templates/` contains the HTML views for each cipher page and error page.
- `static/` contains front-end assets such as stylesheets.

## Requirements

- Python 3.10 or later
- `pip`

## Installation

1. Clone the repository:

```bash
git clone https://github.com/nickymarzz/cryptography-flask-app.git
cd cryptography-flask-app
```

2. Create a virtual environment:

```bash
python -m venv venv
```

3. Activate the virtual environment:

```powershell
venv\Scripts\activate
```

On macOS or Linux:

```bash
source venv/bin/activate
```

4. Install dependencies:

```bash
pip install -r requirements.txt
```

## Running the Application

Start the Flask development server with:

```bash
python app.py
```

Then open `http://127.0.0.1:5000` in your browser.

## Testing

Run the unit test suite from the repository root with:

```bash
python -m unittest discover -s tests -v
```

## Available Routes

- `/` - Home page
- `/home` - Redirect to the home page
- `/caesar` - Caesar cipher interface
- `/vigenere` - Vigenere cipher interface
- `/affine` - Affine cipher interface
- `/rsa` - RSA interface
- `/about` - About page

## Configuration Notes

The application currently runs with Flask's built-in development server and
debug mode enabled when started via `python app.py`.

The app also defines a hard-coded secret key in `app.py` for local educational
use. If you plan to deploy or extend this project, replace that key with a
secure environment-based configuration before using it outside local
development.

## Contributing

Contributions are welcome. Please review the following project guidelines before
opening an issue or pull request:

- [Contributing Guide](./CONTRIBUTING.md)
- [Code of Conduct](./.github/CODE_OF_CONDUCT.md)
- [Security Policy](./.github/SECURITY.md)
- [Issue Tracker](https://github.com/nickymarzz/cryptography-flask-app/issues)

## License

This project is licensed under the MIT License. See [LICENSE](./LICENSE) for
details.
