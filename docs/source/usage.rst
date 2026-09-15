Usage Guide
===========

Installation
------------

Requirements
^^^^^^^^^^^^

- Python 3.10 or later (with ``pip`` available on ``PATH``)
- Any modern web browser

Setup Steps
^^^^^^^^^^^^

1. Clone or download the project repository.

2. Create a virtual environment (recommended):

   .. code-block:: bash

      python -m venv venv

3. Activate the virtual environment:

   - **Windows (PowerShell/CMD):**

     .. code-block:: bat

        venv\Scripts\activate

   - **macOS / Linux:**

     .. code-block:: bash

        source venv/bin/activate

4. Install runtime dependencies:

   .. code-block:: bash

      pip install -r requirements.txt

   (This installs Flask, the only runtime dependency.)

Running the Application
-----------------------

Windows Quick Start
^^^^^^^^^^^^^^^^^^

- **Start the server**: Double-click ``start.bat`` or run it in a terminal.
  The Flask dev server launches on port 5000 and your default browser opens
  ``http://127.0.0.1:5000``.

- **Stop the server**: Double-click ``stop.bat`` or run it in a terminal
  to cleanly terminate the Flask process and release port 5000.

Manual Start (All Platforms)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

From the project root:

.. code-block:: bash

   python app.py

Then navigate to ``http://127.0.0.1:5000`` in your browser.

The terminal will print a startup banner listing every available route and
the implementation status of each cipher.

.. tip::

   ``app.py`` runs with ``debug=True``. The server auto-reloads whenever you
   edit ``app.py`` or ``ciphers.py``, which is convenient while studying or
   extending the code.

Application Routes
------------------

.. list-table::
   :header-rows: 1
   :widths: 25 75

   * - Route
     - Purpose
   * - ``/`` or ``/home``
     - Home page with cipher navigation
   * - ``/caesar``
     - Caesar cipher encrypt/decrypt forms
   * - ``/vigenere``
     - Vigenere cipher encrypt/decrypt forms
   * - ``/affine``
     - Affine cipher encrypt/decrypt forms
   * - ``/rsa``
     - RSA key generation + encrypt/decrypt
   * - ``/about``
     - Educational overview of ciphers
   * - Any invalid path
     - Custom 404 error page

Using Each Cipher
------------------

Caesar Cipher (``/caesar``)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

- Enter plaintext or ciphertext and a shift value between 1 and 25.
- The app uppercases letters automatically; non-letters are preserved unchanged.
- Decryption is the inverse operation using the same shift key.

Vigenere Cipher (``/vigenere``)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

- Provide text and an alphabetic keyword (letters only).
- The keyword repeats cyclically over the input to determine per-character shifts.
- Case is preserved for letters; spaces and punctuation pass through.

Affine Cipher (``/affine``)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

- Requires two keys, ``a`` and ``b``.
- ``a`` **must** be coprime with 26 — valid values:
  1, 3, 5, 7, 9, 11, 15, 17, 19, 21, 23, 25.
- ``b`` is an additive shift value (any integer; reduced mod 26 automatically).
- The form rejects invalid ``a`` values with a descriptive error.

RSA Cipher (``/rsa``)
^^^^^^^^^^^^^^^^^^^^^^^^

RSA has three stages:

1. **Generate Keys** — enter two distinct primes ``p`` and ``q``.
   The page returns a public key ``(e, n)`` and private key ``(d, n)``.

2. **Encrypt** — provide a message (integer or short string) together with
   the public key. The string is serialized to bytes and interpreted as a
   big-endian integer, which must be less than ``n``.

3. **Decrypt** — provide the ciphertext integer together with the
   private key to recover the original message.

.. note::

   For the educational RSA demo, keep primes small enough to keep arithmetic
   readable on screen. Production RSA uses thousands-of-bits primes.

Testing
-------

Run the full unit test suite from the repository root:

.. code-block:: bash

   python -m unittest discover -s tests -v

The suite covers:

- Caesar normalization and round-trip
- Vigenere known-vector round-trip (case + punctuation preserved)
- Affine valid/invalid ``a`` values and round-trip
- RSA primality, key generation modulus check, integer + string round-trip, and oversized message rejection
- Math helpers (GCD and modular inverse including no-inverse case)

You can also exercise every cipher end-to-end by running
``python ciphers.py`` directly — its ``__main__`` block prints formatted
output for all four ciphers and reports a comprehensive pass/fail summary.

Building This Documentation
------------------------

Install the docs build dependencies from ``docs/requirements.txt`` once:

.. code-block:: bash

   pip install -r docs/requirements.txt

Then build HTML docs from the ``docs/`` directory:

- **Windows:** ``make.bat html``
- **macOS/Linux:** ``make html``

Open ``docs/build/html/index.html`` in a browser to read the built site.

.. warning::

   The Flask secret key in ``app.py`` is hard-coded for local educational use.
   Replace it with an environment-sourced value before any deployment beyond
   your own machine.
