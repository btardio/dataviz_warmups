#!/usr/bin/env python
# coding: utf-8

import unittest

class TestBasicMath(unittest.TestCase):

    def testmul(self): self.assertEqual(2 * 5, 10)
    def testadd(self): self.assertTrue(2 + 10 == 12)
    def testdiv(self): self.assertTrue(10 / 2 == 5)
    def testsub(self): self.assertEqual(10 - 2, 8)
        
def createSuite( testadd = True, testsub = True, testmul = True, testdiv = True ):
    suite = unittest.TestSuite()
    if testadd: suite.addTest(TestBasicMath('testadd'))
    if testsub: suite.addTest(TestBasicMath('testsub'))
    if testmul: suite.addTest(TestBasicMath('testmul'))
    if testdiv: suite.addTest(TestBasicMath('testdiv'))
    return suite

runner = unittest.TextTestRunner()

d = { 
      'testadd': False,
      'testdiv': False
    }

l = [ True, False, False, True ]


s0 = createSuite(*l)

runner.run(s0)

s1 = createSuite(**d)

runner.run(s1)
    

