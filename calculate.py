import numpy, numpy.linalg

Tdict = {
  1: 0.1481,
  2: -0.0212,
  3: -0.1954,
  4: 0.3437,
  5: -0.4407,
  6: -0.3069,
  7: -0.5279,
  8: 0.2798,
  9: 0.1669,
  10: -0.6009,
  11: -0.881,
  12: -0.2509,
  13: 0.4574,
  14: 0.4624,
  15: -0.3209,
  16: -1.342,
  17: 2.279,
  18: -0.0359,
  }

alphadict = {
  1: -0.684148,
  2: -0.442106,
  3: -0.515377,
  4: -0.284779,
  5: -0.256937,
  6: -0.462337,
  7: -0.797948,
  8: -0.753375,
  9: -0.132326,
  10: -0.511318,
  11: -0.191082,
  12: -0.474204,
  13: -0.161910,
  14: -0.365850,
  15: -0.575720,
  16: -0.565201,
  17: -0.535980,
  18: -0.192058
  }

betadict = {
  1: 0.4839686,
  2: 0.1975019,
  3: 0.6672961,
  4: -0.001456,
  5: 1.0147304,
  6: 0.3505583,
  7: 0.7465632,
  8: 0.3004121,
  9: 0.5104515,
  10: 0.7021669,
  11: -0.099554,
  12: 0.1391492,
  13: 0.7458858,
  14: -0.133224,
  15: 0.5576634,
  16: 0.4111227,
  17: 0.4268982,
  18: 0.3939965,
  }

T = []
alpha = []
beta = []
for i in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]:
  T.append(Tdict[i])
  alpha.append(alphadict[i])
  beta.append(betadict[i])

A = [0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0.]
B = [0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0.]

def chi2(A, B):
  result = 0.

  for i, Ai in enumerate(A):
    inext = i + 1
    if inext == 18: inext = 0
    result += (alpha[inext] - A[i] + A[inext])**2
    
  for i, Bi in enumerate(B):
    inext = i + 1
    if inext == 18: inext = 0
    result += (beta[inext] - B[i] + B[inext])**2
    
  for i in range(len(A)):
    result += (T[i] - A[i] - B[i])**2

  return result




v = [None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None]

for i in range(18):
  inext = i + 1
  if inext == 18: inext = 0
  v[i] = [alpha[inext] - alpha[i] + T[i]]

for i in range(18):
  inext = i + 1
  if inext == 18: inext = 0
  v[i + 18] = [beta[inext] - beta[i] + T[i]]



m = [None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None]

for i in range(18*2):
  m[i] = [None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None]

for i in range(18):
  for j in range(18):
    inext = i + 1
    if inext == 18: inext = 0
    jnext = j + 1
    if jnext == 18: jnext = 0
    m[i][j] = 0.
    if i == j: m[i][j] = 3.
    if inext == j: m[i][j] = -1.
    if i == jnext: m[i][j] = -1.

for i in range(18):
  for j in range(18):
    inext = i + 1
    if inext == 18: inext = 0
    jnext = j + 1
    if jnext == 18: jnext = 0
    m[i+18][j+18] = 0.
    if i == j: m[i+18][j+18] = 3.
    if inext == j: m[i+18][j+18] = -1.
    if i == jnext: m[i+18][j+18] = -1.

for i in range(18):
  for j in range(18):
    m[i+18][j] = 0.
    if i == j: m[i+18][j] = 1.

for i in range(18):
  for j in range(18):
    m[i][j+18] = 0.
    if i == j: m[i][j+18] = 1.

v[0] = [0.]
m[0] = [1., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0.]

m = numpy.matrix(m)
v = numpy.matrix(v)

minv = numpy.linalg.inv(m)

p = minv * v

for i in range(18):
  A[i] = float(p[i])
  B[i] = float(p[i+18])


for i in range(18):
  print "if (i == %d) deltaphi = %g;" % (i, A[i])

for i in range(18):
  print "if (i == %d) deltaphi = %g;" % (i, B[i])
