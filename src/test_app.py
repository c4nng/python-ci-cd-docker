import unittest
from app import say_hello

class TestMain(unittest.TestCase):
    def test_say_hello(self):
        self.assertEqual(say_hello(), "Hello, CI/CD with Docker!")

if __name__ == "__main__":
    unittest.main()
