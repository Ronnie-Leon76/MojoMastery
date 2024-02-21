"""
A trait is like a template of characteristics for a struct.
Currently, the only characteristics that traits can define are method signatures.
"""

trait SomeTrait:
    fn required_method(self, x: Int): ...



"""
Struct that conforms to the trait.
"""
struct SomeStruct(SomeTrait):

    fn __init__(inout self):
        pass
    fn required_method(self, x: Int):
        print("hello traits", x)


"""
Function that uses the trait as an argument type
"""
fn fun_with_traits[T: SomeTrait](x: T):
    x.required_method(42)


fn use_trait_function():
    var thing = SomeStruct()
    fun_with_traits(thing)


# Using function overloading to define a trait

"""
Currently, a trait can only contain method signatures, and cannot include method implementations.
"""

# trait Quackable:
#     fn quack(self):
#         ...

@value
struct Duck():
    fn __init__(inout self):
        pass
    
    fn quack(self):
        print("Quack!")

@value
struct StealthCow():
    fn __init__(inout self):
        pass
    
    fn quack(self):
        print("Moo!")


fn make_it_quack(definitely_a_duck: Duck):
    definitely_a_duck.quack()


fn make_it_quack(not_a_duck: StealthCow):
    not_a_duck.quack()




fn main():
    make_it_quack(Duck())
    make_it_quack(StealthCow())