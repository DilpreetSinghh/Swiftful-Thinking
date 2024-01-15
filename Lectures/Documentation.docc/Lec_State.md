# Lec_State

We can change  `let` to `var` to tell Swift that the this line can update, but what about the view? Who's gonna tell him ??
That's where `@State` comes, to update the property in view.

## Overview

It has multiple use cases like, when user sudden logged out from the site or application. `@State` make sure the view got updated to make user aware.

All apps change state. For example, the user might have tapped a button to reveal more information, they might have entered some text into a text box, or chosen a date from a date picker – all things that involve the app moving from one state to another.

### Problem with updating State
The problem with state is that it’s messy: when it changes we need to spot that change and update our layouts to match. That might sound simple at first, but as our state grows and grows it becomes increasingly hard – it’s easy to forget to update one thing, or to get the update order wrong so that the user interface state doesn’t match what was expected.

#### Solution
SwiftUI solves this problem by removing state from our control. When we add properties to our views they are effectively inert – they have values, sure, but changing them doesn’t do anything. But if we added the special @State attribute before them, SwiftUI will automatically watch for changes and update any parts of our views that use that state.

So, when we say @State to make a property, we hand control over it to SwiftUI so that it remains persistent in memory for as long as the view exists. When that state changes, SwiftUI knows to automatically reload the view with the latest changes so it can reflect its new information.

### Role of Binding
When it comes to referring to some state – for example, telling a state property to change when a toggle switch changes – we can’t refer to the property directly. This is because Swift would think we just want to read the value right now rather than saying “please also update this value as things change.” Fortunately, SwiftUI’s solution is to place a dollar sign before the property name, which lets us refer to the underlying data binding rather than its current value. I know this is a little confusing at first, but it becomes second nature after an hour or two.

Remember, SwiftUI is declarative, which means we tell it all layouts for all possible states up front, and let it figure out how to move between them when properties change. We call this binding – asking SwiftUI to synchronize changes between a UI control and an underlying property.
