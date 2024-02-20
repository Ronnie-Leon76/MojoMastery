"""
Mojo functions can be declated with either the `fn` or `def` keyword.
The `fn` declaration enforces type-checking and memory-safe behaviors (Rust style), while the `def` allows
not type declarations and dynamic behaviors (Python style).
"""

def greet(name: String) -> String:
    return "Hello, " + name + "!"


fn greet2(name: String) -> String:
    return "Hello, " + name + "!"


"""
In order to run functions defined using the `def` keyword, you need to define a `main` function using the `def` keyword.
def main():
    print(greet("World"))
"""

fn main():
    print(greet2("World"))