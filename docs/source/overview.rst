.. _module-overview:

Overview
========

The Cryptography Flask App is an interactive educational tool that bridges discrete
mathematics theory with practical web application development. It exposes four
cipher algorithms — from classical substitution schemes to a modern public-key
system — through a unified, browser-accessible interface.

Architecture
------------

The application follows a straightforward two-layer separation:

**Backend (ciphers.py + app.py)**

- ``ciphers.py`` contains pure, side-effect-free cryptographic functions and
  number-theoretic helpers (GCD, extended Euclidean, modular inverse, primality).
- ``app.py`` wraps those functions in Flask routes, validates form input, handles
  GET/POST cycles, and renders Jinja2 templates.

**Frontend (templates/ + static/)**

- HTML templates for each cipher, the home page, an about page, and custom
  error pages (404, 500).
- CSS styling with no runtime JavaScript requirements — all logic lives on the
  server, keeping the demo deterministic and easy to trace.

Project Structure
-----------------

.. code-block:: text

   cryptography-flask-app-clean/
   |-- app.py                 # Flask routes, request handling, flash messages
   |-- ciphers.py           # Caesar, Vigenere, Affine, RSA + math helpers
   |-- requirements.txt    # Runtime dependencies (Flask)
   |-- start.bat / stop.bat  # Windows convenience scripts
   |-- static/
   |   `-- style.css       # Custom stylesheet
   |-- templates/
   |   |-- index.html      # Home / landing page
   |   |-- caesar.html    # Caesar cipher UI
   |   |-- vigenere.html  # Vigenere cipher UI
   |   |-- affine.html    # Affine cipher UI
   |   |-- rsa.html       # RSA keygen + encrypt/decrypt UI
   |   |-- about.html     # Educational background page
   |   |-- 404.html / 500.html
   `-- tests/
       `-- test_ciphers.py  # Unit test suite for all ciphers
   `-- docs/              # Sphinx documentation (this set)

Cipher Comparison Matrix
----------------

.. list-table::
   :header-rows: 1
   :widths: 15 18 12 25 30

   * - Cipher
     - Type
     - Security
     - Key(s)
     - Core Formula
   * - Caesar
     - Monoalphabetic substitution
     - Weak
     - Shift value (1–25)
     - E(x) = (x + shift) mod 26
   * - Vigenere
     - Polyalphabetic substitution
     - Moderate
     - Alphabetic keyword
     - E_i(x) = (x + key_i) mod 26
   * - Affine
     - Mathematical substitution
     - Weak to Moderate
     - (a, b), gcd(a,26)=1
     - E(x) = (a*x + b) mod 26
   * - RSA
     - Public-key asymmetric
     - Very Strong
     - (e, n) public, (d, n) private
     - c = m^e mod n ; m = c^d mod n

Learning Progression
----------------

The ciphers are intentionally ordered so each builds on discrete math concepts
introduced by the previous:

1. **Caesar** — modular arithmetic under mod 26 and letter-position mapping.
2. **Vigenere** — extends Caesar with a repeating key schedule.
3. **Affine** — introduces GCD/coprimality and the modular inverse.
4. **RSA** — combines primality testing, Euler's totient, and the extended Euclidean
   algorithm into an asymmetric system.

.. note::

  For hands-on study, read ``ciphers.py`` alongside this overview: each function is
  heavily commented with its mathematical justification.
