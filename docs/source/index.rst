.. Cryptography Flask App documentation master file.

Cryptography Flask App Documentation
=====================================

.. meta::
   :description: Interactive educational application for classical and modern ciphers
   :keywords: cryptography, ciphers, Caesar, Vigenere, Affine, RSA, Flask, Python, Discrete Math

Welcome
-------

Welcome to the Cryptography Flask App documentation. This project is an educational
Flask web application designed for a Discrete Mathematics course, providing
interactive hands-on experience with classical and introductory public-key
cryptographic algorithms.

Users can encrypt and decrypt text using four distinct cipher implementations,
each accessible through dedicated browser-based forms with live input validation
and result display.

**Audience snapshot**

- Students learning discrete mathematics and introductory cryptography
- Instructors seeking a visual teaching aid for cipher algorithms
- Developers exploring practical implementations of number-theoretic algorithms

Project Snapshot
----------------

.. list-table::
   :widths: 25 75
   :header-rows: 0

   * - Project
     - Cryptography Flask App (Discrete Math Project)
   * - Version
     - 1.0.0
   * - Language
     - Python 3.10+ with Flask
   * - Status
     - All ciphers fully implemented

Supported Ciphers
-----------------

.. list-table::
   :widths: 20 30 50
   :header-rows: 1

   * - Cipher
     - Type
     - Description
   * - Caesar
     - Substitution
     - Fixed-position alphabet shift (1-25)
   * - Vigenere
     - Polyalphabetic
     - Keyword-driven multi-shift substitution
   * - Affine
     - Mathematical
     - Linear function (ax + b) mod 26
   * - RSA
     - Public-key
     - Prime-based asymmetric encryption

Quick Start
-----------

1. Install dependencies via ``pip install -r requirements.txt``.
2. Launch the server with ``python app.py`` (or ``start.bat`` on Windows).
3. Navigate to ``http://127.0.0.1:5000`` in your browser.
4. Select a cipher from the navigation and experiment with encryption/decryption.
5. Run tests with ``python -m unittest discover -s tests -v``.

For Sphinx documentation builds, run ``make html`` from the ``docs/`` directory
and open ``build/html/index.html``.

Educational Goals
-----------------

- Understand how classic substitution and polyalphabetic ciphers operate.
- Visualize the mathematical foundations (modular arithmetic, GCD, modular inverse)
  behind Affine and RSA.
- Implement and trace algorithms in production-quality Python code.
- Connect discrete math concepts to real-world web applications via Flask.

What You'll Find Here
---------------------

- **Overview**: Architecture, project structure, and cipher comparison matrix.
- **Usage Guide**: Installation, running the app, route reference, and testing instructions.

.. toctree::
   :maxdepth: 2
   :caption: Contents:

   overview
   usage
