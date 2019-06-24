## This is a sample project for a small ios bug. 

### Preview of the bug

<img height="700" src="preview.gif"/>

### Description

If a pushed view controller has an input accessory view (overridden `inputAccessoryView` method and a non-nill view is returned from there), then when any text input view calls `becomeFirstResponder` before push animation has been done, push animation is repeated (see the preview).

One interesting case that if to remove either `inputAccessoryView` or `canBecomeFirstResponder` method (implement only one of them), then the animation will be a bit different (no less terrible though). 

<img height="700" src="preview_2.gif">

### Fix

In case when you need to use `inpuAccessoryView` or `canBecomeFirstResponder` on a view controller, you should be sure that all `becomeFirstResponder` methods are called only after or inside `viewDidAppear` method.