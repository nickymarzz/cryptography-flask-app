import unittest

from ciphers import (
    affine_decrypt,
    affine_encrypt,
    caesar_decrypt,
    caesar_encrypt,
    gcd,
    is_prime,
    mod_inverse,
    rsa_decrypt,
    rsa_encrypt,
    rsa_generate_keys,
    vigenere_decrypt,
    vigenere_encrypt,
)


class CaesarCipherTests(unittest.TestCase):
    def test_caesar_encrypt_normalizes_to_uppercase(self):
        self.assertEqual(caesar_encrypt("Hello, World!", 3), "KHOOR, ZRUOG!")

    def test_caesar_decrypt_restores_plaintext_in_uppercase(self):
        encrypted = caesar_encrypt("attack at dawn", 5)
        self.assertEqual(caesar_decrypt(encrypted, 5), "ATTACK AT DAWN")


class VigenereCipherTests(unittest.TestCase):
    def test_vigenere_encrypt_matches_known_example(self):
        self.assertEqual(vigenere_encrypt("HELLO", "KEY"), "RIJVS")

    def test_vigenere_round_trip_preserves_case_and_punctuation(self):
        plain_text = "Attack at dawn!"
        keyword = "LEMON"
        encrypted = vigenere_encrypt(plain_text, keyword)

        self.assertEqual(encrypted, "Lxfopv ef rnhr!")
        self.assertEqual(vigenere_decrypt(encrypted, keyword), plain_text)


class MathHelperTests(unittest.TestCase):
    def test_gcd_returns_common_divisor(self):
        self.assertEqual(gcd(54, 24), 6)

    def test_mod_inverse_returns_none_when_inverse_does_not_exist(self):
        self.assertIsNone(mod_inverse(13, 26))

    def test_mod_inverse_returns_expected_value(self):
        self.assertEqual(mod_inverse(3, 26), 9)


class AffineCipherTests(unittest.TestCase):
    def test_affine_round_trip_preserves_input(self):
        plain_text = "Affine Cipher 123!"
        encrypted = affine_encrypt(plain_text, 5, 8)

        self.assertEqual(encrypted, "Ihhwvc Swfrcp 123!")
        self.assertEqual(affine_decrypt(encrypted, 5, 8), plain_text)

    def test_affine_encrypt_rejects_invalid_a_value(self):
        with self.assertRaises(ValueError):
            affine_encrypt("HELLO", 2, 8)

    def test_affine_decrypt_rejects_invalid_a_value(self):
        with self.assertRaises(ValueError):
            affine_decrypt("RCLLA", 2, 8)


class RsaTests(unittest.TestCase):
    def test_is_prime_identifies_prime_and_non_prime_values(self):
        self.assertTrue(is_prime(61))
        self.assertFalse(is_prime(1))
        self.assertFalse(is_prime(91))

    def test_rsa_generate_keys_returns_expected_modulus(self):
        public_key, private_key = rsa_generate_keys(61, 53)

        self.assertEqual(public_key[1], 3233)
        self.assertEqual(private_key[1], 3233)

    def test_rsa_integer_round_trip(self):
        public_key, private_key = rsa_generate_keys(61, 53)
        message = 255

        encrypted = rsa_encrypt(message, public_key)
        decrypted = rsa_decrypt(encrypted, private_key)

        self.assertEqual(decrypted, message)

    def test_rsa_single_character_string_round_trip(self):
        public_key, private_key = rsa_generate_keys(61, 53)
        encrypted = rsa_encrypt("A", public_key)

        self.assertEqual(rsa_decrypt(encrypted, private_key), "A")

    def test_rsa_encrypt_rejects_messages_larger_than_modulus(self):
        public_key, _ = rsa_generate_keys(61, 53)

        with self.assertRaises(ValueError):
            rsa_encrypt("HELLO", public_key)


if __name__ == "__main__":
    unittest.main()
