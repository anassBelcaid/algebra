"""
Résolution de l'exercice 1 en utilisant sympy
"""

import sympy as sp
from sympy import poly
from sympy.abc import x
import numpy as np


if __name__ == "__main__":
    
    #Define the first polynom
    P1 = poly(x**4 + 5*x**3 + 12*x**2  + 19*x  - 7, domain='RR')
    Q1 = poly(x**2 + 3*x -1, domain='RR')
    quotient, rest = sp.div(P1, Q1)
    print("Quotient est:", quotient)
    print("rest est:", rest)


    #Second example
    P2 = poly(x**4 - 4*x**3  - 9*x**2 + 27*x +38, domain='RR')
    Q2 = poly(x**2 - x - 7, domain='RR')
    quotient, rest = sp.div(P2, Q2)
    print("Quotient est:", quotient)

    #Second example
    P3 = poly(x**5  -x**2 + 2, domain='RR')
    Q3 = poly(x**2 +1, domain='RR')
    quotient, rest = sp.div(P3, Q3)
    print("Quotient est:", quotient)
    print("rest est:", rest)


