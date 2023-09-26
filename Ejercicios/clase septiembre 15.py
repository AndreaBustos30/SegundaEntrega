import numpy as np

A = np.array([[1,2,3],[4,5,6]])
print(A)

Af = np.array([1,2,3], float)

temp = np.arange(0,1,0.2)

np.linspace(0,2*np.pi,4)

np.zeros((2,3))

Temp2= np.identity(4)
np.diag(Temp2)

Temp2.shape
temp.shape
A.shape

np.random.random((2,3))

a = np.random.normal(loc=1.0,scale=2.0,size=(2,2))

np.savetxt("C:/Users/Andrea/Desktop/EJERCICIOS RSTUDIO",a)
np.savetxt("C:/Users/Andrea/Desktop/EJERCICIOS RSTUDIO",a)  


A= np.zeros((2,2))
C = A
C[0,0] = 2
C

a = np.arange(10)
a.reshape((2,5))
a.ndim
a = a.reshape((2,5))
a.ndim
a.shape
a.dtype

a = np.arange(4)
b = np.array([2,3,2,4])
a * b
b-a

A = np.ones((3,3))
A
print(3*A-1)

u = [1,2,3]
v = [4,5,6]
np.inner(u,v)
np.outer(u,v)
np.dot(u,v)

