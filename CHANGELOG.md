# Changelog

## Version 1.3.0

* Verify: Add verification by user_id.
* Verify: Add verification through VKConnect

## Version 1.2.2

* Notify: Fix handling of unregistering to remote notificatins.

## Version 1.2.1

* Verify, VerifyControls: Add support CallUI.
* Verify: Add verification methods selection.
* Verify: Add CallUI and Ivr into manual_routes.
* Verify: Add details for network errors.

## Version 1.2.0

* Notify: Add event NotifyMessageDismissed for remote pushes removed from Notification Center.
* Notify: Add event NotifyMessageRedirected to open links from activity.
* Notify: Add support dark-mode to Activity
* Notify: Add support custom and dynamic fonts to Activity.

## Version 1.1.11

* Notify: Fix InApps.

## Version 1.1.10

* Notify: Add GDPR support.
* Notify: Add internal event to receiving error during registration to remote notifications.
* Notify: Add internal event to unregistering to remote notificatins.
* Notify: Add support to custom handling incomig url from apinotify.
* Notify: Rename value of event NotifyMessageStateChanged from WAITING to WAITING_FOR_CONTENT_AND_EVENT.
* Notify: Fix process of update inapps.
* Notify: Fix handling tap to button in inapps.

## Version 1.1.9

* Notify: Fix fonts and colors of landing with type **Activity**.
* Verify: Add total sign out. Now you can reset all instances at once.
* VerifyControls: Fix bug in PhoneFormatter. Sometimes user received incorrect phone number info during fast editing the phone number.

## Version 1.1.8

* Notify: Fix opening deeplinks from activity
* Notify: Fix fonts in activity
* Notify: Fix sending events from extensions

## Version 1.1.7

* Notify: Add properties to events
* Notify, Verify: Fix header User-Agent in the libraries' requests
* Notify: Fix handling landings
* Notify: Change time of send event AppFirstLaunch

## Version 1.1.6

* Verify: Internal improves to support mobileId

## Version 1.1.5

* Verify: Add support mobileId

## Version 1.1.4

* Notify, Verify: Add support iOS 13

## Version 1.1.3

* Notify: Fix handling tap to buttons on landing activity

## Version 1.1.2

* Notify, Verify: Fix crash during push token registration if libnotify or libverify is added to project but isn't initialized

## Version 1.1.1

* Notify, Verify: Fix pushes on iOS9
* Notify, Verify: Fix generation push-token from data on iOS13

## Version 1.1.0

* Notify: Add inapps

## Version 1.0.11

* Notify: Hotfix of sending pushstatus


## Version 1.0.10

* Notify: Hotfix of content extensions

## Version 1.0.9

* Internal changes

## Version 1.0.8

* VerifyControls: Hotfix of NTFPhoneFormatter

## Version 1.0.7

* Notify: Add redesign of landing
* Notify: Handle landing colors received from APNS pushes
* Notify: User can disable sending APNS pushes
* Notify: Fix bug when instanceId remain nonsended to server
* Notify: Sending field `last_user_id` from extensions
* Verify: Developers can change librarie's language. It will be used for SMS
* Verify: Add support 13 languages
* Verify: Fix of lost instance_id
* Verify: Add support of ServiceExtension
* Verify: Changing public API
* Verify: Add support to enable sandbox
* VerifyControls: Developer can change language of `NTFPhoneFormatter`

## Version 1.0.6

* Libnotify: Fix crash appeared on reset userId
* Libnotify: Delegate opening main interface to application developers through protocol `NTFNotifyDelegate`
* Libnotify: Fix events that send on opening main interface
* Libnotify: Fix events that send on various errors
* Libnotify: Fix bug on notification activity when notification hasn't got any button
* Libnotify: Open notification activity in separate window
* Libverify: Fix API for better support swift
* Libverify: Open push settings in separate window

## Version 1.0.5

* Few fixes

## Version 1.0.4

* Move to frameworks

## Version 1.0.3

* Move to Cocoapods
