##  SwiftUI bug

![UIViewRepresentableBug](UIViewRepresentableBug.png)

As of Xcode 11.3.1 and 11.4-beta, there is a bug with updating a UIViewRepresentable. When a SwiftUI View passes an
`@ObservedObject` to a UIViewRepresentable, and the UIViewRepresentable is a `struct`, SwiftUI fails to call the
`updateUIView` method of the UIViewRepresentable when the observed object changes.

If the UIViewRepresentable is a `final class`, then its `updateUIView`  is correctly called when the observable
object changes.

### Setup

- A SwiftUI View with an `@ObservedObject` object. The object will change on a 1 second timer.
- The SwiftUI View's body contains two UIViewRepresentables:
  - one is a `struct`
  - the other one is a `final class`
- The SwiftUI View passes its observed object to the two UIViewRepresentables.

### Expected behavior

- Both UIViewRepresentables update on the timer

### Actual behavior

- The `final class` UIViewRepresentable updates correctly on the timer
- The `struct` UIViewRepresentable does NOT update on the timer

Side note: the `struct` UIViewRepresentable does update when the device orientation is changed
