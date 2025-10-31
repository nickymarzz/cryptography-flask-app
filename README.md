# 🔐 Cryptography Flask App  

📚 **About This Project**  
_Learning Cryptography Through Code_  

---

### 🧭 Project Overview

**What is This App?**  
This is an **educational web application** built with **Flask (Python)** to help students learn about **cryptographic algorithms** in a hands-on, interactive way.  
It’s designed specifically for **Discrete Mathematics** courses.

---

### 🏆 Project Status

![Status](https://img.shields.io/badge/Status-Completed-green)
![Python](https://img.shields.io/badge/Python-3.10%2B-blue)
![Flask](https://img.shields.io/badge/Flask-Web%20Framework-orange)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

---

### 🎯 Educational Goals

1. 🧩 Understand how classic encryption algorithms work  
2. 🧮 See the mathematical foundations behind cryptography  
3. 💻 Practice implementing algorithms in Python  
4. 🌐 Learn web development with Flask  
5. 🔁 Explore the evolution from simple to modern encryption  

---

### 🧠 The Ciphers We Explore

<details>
<summary>🏛️ <b>Caesar Cipher</b> — <em>Fully Implemented ✅</em></summary>

The simplest substitution cipher, used by Julius Caesar.  
Each letter is shifted by a fixed number of positions.  

**Security:** 🔓 Very weak — can be broken by trying all 25 possible shifts.
</details>

<details>
<summary>🔑 <b>Vigenère Cipher</b> — <em>Fully Implemented ✅</em></summary>

Uses a keyword to create multiple Caesar ciphers.  

**Security:** 🟡 Moderate — breakable with frequency analysis if the key is short.
</details>

<details>
<summary>📐 <b>Affine Cipher</b> — <em>Fully Implemented ✅</em></summary>

Uses a mathematical function: *(ax + b) mod 26*.  

**Security:** 🟠 Weak to moderate — vulnerable to pattern analysis.
</details>

<details>
<summary>🔒 <b>RSA Cipher</b> — <em>Fully Implemented ✅</em></summary>

Modern **public-key cryptography** using prime numbers.  

**Security:** 🟢 Very strong when implemented with large primes.
</details>

---

### 🧰 Technical Implementation

This application is built using:

| Layer         | Technology                                    |
|---------------|-----------------------------------------------|
| 🧠 Backend    | Python (Flask Framework)                      |
| 🎨 Frontend   | HTML5, CSS3 *(no JavaScript for simplicity)*  |
| 🧩 Templating | Jinja2 (built into Flask)                     |
| 💅 Styling    | Custom CSS with modern design principles      |

---

### ✅ Progress Tracker

- [x] Caesar Cipher implemented  
- [x] Frontend structure completed  
- [x] RSA Cipher implementation completed
- [x] Full implementation for all ciphers

---

### 🖼️ Visual Overview  

> ### Caesar Cipher Diagram
>>![Caesar Cipher Example](https://upload.wikimedia.org/wikipedia/commons/4/4a/Caesar_cipher_left_shift_of_3.svg "Caesar Cipher illustration")  

> ### Vigenère Cipher Diagram
>>![Vigenère Cipher Example](https://media.geeksforgeeks.org/wp-content/cdn-uploads/Vigen%C3%A8re_square_shading.png "Vigenère Cipher illustration")  

> ### Affine Cipher Diagram
>>![Affine Cipher Example](https://media.geeksforgeeks.org/wp-content/uploads/affin-cipher.png "Affine Cipher illustration")  

> ### RSA Cipher Diagram
>>![RSA Cipher Example](https://www.researchgate.net/profile/Hueseyin-Bodur/publication/298298027/figure/fig2/AS:339820552441867@1458030941634/RSA-algorithm-structure.png "RSA Cipher illustration")  
---

### 📊 Cipher Comparison Table  

| Cipher Name     | Type                 | Security Level      | Key Complexity   |
|-----------------|----------------------|---------------------|------------------|
| Caesar Cipher   | Substitution         | Weak                | 1 shift value    |
| Vigenère Cipher | Polyalphabetic       | Moderate            | Word-based key   |
| Affine Cipher   | Mathematical         | Weak to Moderate    | Two numeric keys |
| RSA Cipher      | Public-key           | Very Strong         | Large primes     |

---

### 🌱 Learning Path

1. **Start with Caesar Cipher** → Understand substitution basics  
2. **Implement Vigenère Cipher** → Learn about polyalphabetic encryption  
3. **Try Affine Cipher** → Explore math-based encryption functions  
4. **Challenge with RSA** → Dive into public-key cryptography concepts  

Each cipher builds upon concepts from the previous ones, forming a **natural learning progression** from classic to modern encryption.  

---

> 💡 **Why Flask?**  
> Flask is perfect for learning because it’s simple, lightweight, and doesn’t hide how the web actually works.  
> You can clearly see how HTTP requests and responses are processed — great for understanding the fundamentals of web development.[^1]

[^1]: Flask’s official documentation explains this philosophy — see [https://flask.palletsprojects.com](https://flask.palletsprojects.com)