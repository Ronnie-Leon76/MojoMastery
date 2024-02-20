def do_math(x):
    var y = x + x # y is mutable
    y = y * y
    let z = y + x # z is immutable
    print(z)

def main():
    do_math(5)