# Complex numbers

# Complex number 
# z = x + y * i

# x - real part
# y - imaginary part
# i ~ i^2 = -1, i^3 = -i, i^4 = -1 * (-1) = 1

# create complex number z = 1 + 1i
z <- 1 + 1i

# alternative 
z <- complex(real = 1, imaginary = 1)

# type and logical test
typeof(z)
class(z)
is.complex(z)

# convert double to complex
x <- 1
typeof(x)
z <- as.complex(x)
typeof(z)

# create 2 complex numbers
z1 <- 3 + 2i
z2 <- 1 + 3i

# extract real and imaginary part from z1
Re(z1)
Im(z1)

# addition
z1 + z2

# subtraction
z1 - z2

# conjugate of z1
Conj(z)

# multiplication and division of complex numbers
z1 * z2
z1 / z2

# square root of i is -1 
ii <- complex(real=0, imaginary=1)^2
ii
Re(ii)
