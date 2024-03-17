# myOtherBool

```swift
import Foundation

// There is always a value and it is a Boolean
let myBool: Bool? = false

// We don't know if there is a value, but if there is, it is a Boolean
var myOtherBool: Bool? = nil
print(myOtherBool) // Warning
```
`Warning: Expression implicitly coerced from 'Bool?' to 'Any''

### Reason
The warning indicates that you're trying to use an optional Boolean (`Bool?`) in a context where a generic `Any` type is expected.  Here's why:

Optionals: In Swift, variables declared with a `?` (like `Bool?`) are called optionals. They can either hold a value of the specified type (e.g., `true` or `false` for a `Bool?`) or be `nil`, representing the absence of a value.

The `print` function: The `print` function in Swift is designed to work with a variety of types.  To do this, it expects its arguments to be of type `Any`. The `Any` type can represent anything — an `Int`, a `String`, a custom class, etc.

Implicit Coercion:  When you try to `print(myOtherBool)`, Swift sees an optional Boolean (`Bool?`) but the `print` function wants an `Any`. To resolve this, Swift automatically wraps your `Bool?` value within an `Any`. This behind-the-scenes conversion is "implicit coercion."


# line24: let newValue: Bool? = myOtherBool

What if we write
```swift
let newValue: Bool? = myOtherBool
```
We will get three errors
 - Value of optional type 'Bool?' must be unwrapped to a value of type 'Bool'
 - Coalesce using '??' to provide a default when the optional value contains 'nil'
 - Force-unwrap using '!' to abort execution if the optional value contains 'nil'
**Why**:
We can't assign optional value to non optional value


