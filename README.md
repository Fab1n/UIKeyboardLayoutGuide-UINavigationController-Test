# UIKeyboardLayoutGuide-UINavigationController-Test
Demonstrates how `UIKeyboardLayoutGuide` in iOS 15.0 does not work as expected with navigation views.

## How to test the issue
1. Build and run (Simulator is enough - on device the issue is the same) in Xcode (I used 13.0)
2. Press "open nav stack" to open a navigation stack
3. The root VC shows a green rect at the bottom, the bottom anchor of which is tied to the top anchor of the keyboard layout guide
4. Tap into the text field and you will see that the green rect moves with the keyboard (make sure in Simulator the keyboard is visible)
5. Now press the "push view" button and a new view controller gets pushed
  - The moment you press the button you notice that the green rect is gone
  - The rect should not be gone but move to the bottom again while the keyboard is being dismissed
6. When you dismiss the pushed ViewController you should expect the green rect to be sitting at the bottom or above the keyboard if the text field is active
