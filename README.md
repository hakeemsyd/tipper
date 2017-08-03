# Pre-work - *Tipper*

**Tipper** is a tip calculator application for iOS.

Submitted by: **Syed Hakeem Abbas**

Time spent: **3** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<blockquote class="imgur-embed-pub" lang="en" data-id="xgBVJJF"><a href="//imgur.com/xgBVJJF"></a></blockquote><script async src="//s.imgur.com/min/embed.js" charset="utf-8"></script>

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** iOS development is tied to xcode tool and I missed freedom to type in vim or any other editor plus I had to restrict myself to remember where things are in xcode. I am excited to learn what all the boilerplate code does here & there.

Outlet allows you to programatically change UI as a reasult of some event. Action are messages recieved in controller as a result of some UI interaction by user.

I think the implementation must be similar to android where UI elements are tracked by uniquely assigned identifiers and there are listener objects/functions associated to listen to when something changes & send messages to intrested objects. To trigger some change from code to UI, there have to be a reference (object) created corresponding to each ui element.

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:** A closure, assigned to class member variable, holds a reference to the containing object e.g. the one that has that closure as instance member. Also the class has reference to closure as instance veriable. Both are holding ref to each other causing a cycle.
