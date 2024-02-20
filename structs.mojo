"""
A struct in Mojo is similar to a class in Python:
they both support methods, fields, operator overloading,
decorators for metaprogramming, and so on.
"""

struct MyPair:
    var first: Int
    var second: Int

    fn __init__(inout self, first: Int, second: Int):
        self.first = first
        self.second = second

    fn dump(self):
        print(self.first, self.second)

fn use_mypair():
    let mine = MyPair(2, 4)
    mine.dump()

fn main():
    use_mypair()
