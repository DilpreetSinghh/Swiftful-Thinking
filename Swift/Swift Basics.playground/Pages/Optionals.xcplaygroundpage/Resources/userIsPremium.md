# checkIfUserIsPremium()

```swift
var userIsPremium: Bool? = nil

func checkIfUserIsPremium() -> Bool? {
    return userIsPremium
}

func checkIfUserIsPremium2() -> Bool {
    return userIsPremium ?? false
}
```
## Function Differences

### Function 1: checkIfUserIsPremium()

 - Returns Bool?: This function directly returns the userIsPremium variable. Since userIsPremium itself could be an optional Boolean (Bool?), the entire return type becomes Bool?.
 - Potential for nil: If userIsPremium is nil, the function will return nil, signaling that the user's premium status is undetermined.

### Function 2: checkIfUserIsPremium2()

 - Returns Bool: This function uses the nil coalescing operator (??) to provide a default value. The expression userIsPremium ?? false means:
        - If userIsPremium has a value, return that value.
        - If userIsPremium is nil, return false.
 - Always Returns a Definite Value: This function guarantees to return a non-optional Boolean value (either true or false).

### When to Use Which

 - The choice between the functions depends on how you intend to handle the "undetermined" state:

 - checkIfUserIsPremium() is better if you want to explicitly differentiate between a user who is not premium (false) and the case where the premium status is not yet known (nil).

 - checkIfUserIsPremium2() is a good choice when you need a definitive true or false answer immediately and want to treat "not premium" and "status unknown" the same way.

Example

Let's say you're building a UI element:

 - If you use checkIfUserIsPremium(), you could display three states: "Premium", "Not Premium", and "Loading..." (if the value is nil).

 - If you use checkIfUserIsPremium2(), you can only display two states:  "Premium" or "Not Premium".

