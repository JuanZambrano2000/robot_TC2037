import unittest
import numpy as np
from cpu import (
    turn90,
    turn180,
    turn270,
    movement,
    read_file
)

class YourTestCase(unittest.TestCase):
    def test_turn90(self):
        dir = "UP"
        turn90()
        self.assertEqual(dir, "RIGHT")

        dir = "RIGHT"
        turn90()
        self.assertEqual(dir, "DOWN")

        dir = "DOWN"
        turn90()
        self.assertEqual(dir, "LEFT")

        dir = "LEFT"
        turn90()
        self.assertEqual(dir, "UP")

    def test_turn180(self):
        dir = "UP"
        turn180()
        self.assertEqual(dir, "DOWN")

        dir = "RIGHT"
        turn180()
        self.assertEqual(dir, "LEFT")

        dir = "DOWN"
        turn180()
        self.assertEqual(dir, "UP")

        dir = "LEFT"
        turn180()
        self.assertEqual(dir, "RIGHT")

    def test_turn270(self):
        dir = "UP"
        turn270()
        self.assertEqual(dir, "LEFT")

        dir = "RIGHT"
        turn270()
        self.assertEqual(dir, "UP")

        dir = "DOWN"
        turn270()
        self.assertEqual(dir, "RIGHT")

        dir = "LEFT"
        turn270()
        self.assertEqual(dir, "DOWN")

    def test_movement(self):
        map_field = np.zeros(shape=(10, 10))
        x = 0
        y = 0
        dir = "RIGHT"

        movement(3)
        expected_map_field = np.zeros(shape=(10, 10))
        expected_map_field[0][0] = 1
        expected_map_field[0][1] = 1
        expected_map_field[0][2] = 1
        expected_map_field[0][3] = 2
        self.assertTrue(np.array_equal(map_field, expected_map_field))
        self.assertEqual(x, 3)
        self.assertEqual(y, 0)
        self.assertEqual(dir, "RIGHT")

    def test_read_file(self):
        inst_list = read_file()
        self.assertIsInstance(inst_list, list)
        self.assertTrue(all(isinstance(row, list) for row in inst_list))

if __name__ == '__main__':
    unittest.main()
