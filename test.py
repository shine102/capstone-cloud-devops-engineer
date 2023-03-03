import ver1.main as main1
import ver2.main as main2
import unittest

class TestHelloWorld(unittest.TestCase):

    def setUp(self):
        self.app1 = main1.app.test_client()
        self.app1.testing = True
        self.app2 = main2.app.test_client()
        self.app2.testing = True

    def test_status_code(self):
        response1 = self.app1.get('/')
        response2 = self.app2.get('/')
        self.assertEqual(response1.status_code, 200)
        self.assertEqual(response2.status_code, 200)

if __name__ == '__main__':
    unittest.main()