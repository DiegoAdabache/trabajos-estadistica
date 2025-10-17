# -*- coding: utf-8 -*-
"""
Created on Thu Oct 16 15:53:32 2025

@author: diego
"""
import numpy as np


def promedio(vect):
    contador = 0
    suma = 0
    for i in range(len(vect)):
        suma += vect[i]
        contador += 1
    promedio = suma/contador
    return promedio

vectAd = np.array([0.221319683, 0.993931812, 0.909721463, -0.770992467, -0.669570069, 0.202477025, 0.866801653,
                 0.892833640, -0.287484417, -0.953719433, -0.701566427, 0.658466562, 0.122218522, 0.009929104,
                 -0.445763865, -0.570831084, -0.750039598, -0.363989078, 0.174003800, 0.834852925])

vectJo = np.array([-0.47719972,-0.04196086, -0.70375271,-0.57641147, -0.21998859, 0.35037687, 0.24831924,
                   -0.69913212, 0.07792712, 0.59685469, 0.23951231, 0.38685783, 0.70069358, -0.24513662,
                   0.36907702, 0.17023874, -0.57790296, 0.85971648, 0.20973858, -0.56324704])



prom1 = promedio(vectAd)
tetaM1 = prom1 - 1
tetaV1 = min(vectAd)


print("Promedio Adabache:", prom1)
print("Estimador de momentos Adabache: ", tetaM1)
print("Estimador de máxima verosimilitud Adabache:", tetaV1)

prom2 = promedio(vectJo)
tetaM2 = prom2 - 1
tetaV2 = min(vectJo)

print("Promedio de Johan: ", prom2)
print("Estimador de momentos Johan: ", tetaM2)

print("Estimador de máxima verosimilitud Johan: ", tetaV2)
