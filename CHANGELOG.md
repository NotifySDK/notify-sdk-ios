# Changelog

## 2.4.0

* Libverify: Added IVR flag to callin info.

## 2.3.6

* Libverify: Fixed callin descriptor with previous phone number before new.
* Libverify: Fix code_source for callin.

## 2.3.5

* Libverify: Fixed mobileId request params.

## 2.3.4

* Libverify: Adding error for terminal callin route.
* Libverify: Fixed routes handling.

## 2.3.3

* Libverify: Hotfix.

## 2.3.2

* Libverify: iOS 11.0 support returned.

## 2.3.1  

* Libverify: Add support BackgroundTasks.
* Libverify: Add "total_fallback_timeout" field to callin push structure.
* Libverify: Add outgoing call stats sending for callin

## 2.2.1

* Libverify: Fixed session with same IDs error.
* Libverify: Add handling redirects during work with mobileid.
* Libverify: Fix mobileid logic.
* Libverify: Add info about mobileid to stateDescriptor.

## 2.1.4 

* Libverify: Fix no network handling to right state.
* Libverify: Fix wrong sms codes sending handling.  
* Libverify: Fix failure reasons handling.

## 2.1.3

* Libverify: Internal changes.
* Libverify: Fix fetcher.

## 2.1.2

* Libverify: Fix detection of mobileid availability.

## 2.1.1

* Libverify: Internal changes.

## 2.1.0

* Libverify: Modify callin.

## 2.0.5

* Libverify: Move handling verified state back to verifying phone number step by default.

## 2.0.4

* Libverify: Add support callin.
* Libverify: Fix handling restriction cellular data for mobileid.
* Libverify: Improve mobileid.

## 2.0.3

* Libverify: Fix MobileId.

## 2.0.2

* Libverify: Fix presentation popup after activation incoming push.
* Libverify: Move handling verified state to enter code step.
* Libverify: Fix internal logging.
* Libverify: Optimize work with mobileid.

## 2.0.1

* Libverify: Fix internal bugs.
* Libverify: Fix work with scenes.
* Libverify: Internal fixes.

## 2.0.0

* Libnotify: Extracted to external repo and removed.
* Libverify: Changed public API.
* Libverify: Fix internal bugs.
* Libverify: Added support of automatic initialization and configuration.
* Libverify: Add public method to check whether incoming push is Libverify push or not.
* Libverify: Added support of UIScene. 

## 1.10.2

* Move to xcframeworks in release.

## 1.10.1

* Libverify: Internal fix.

## 1.10.0

* Verify: Internal fix.
* Verify: Add support change api endpoint.
* Verify: Fix error when incoming verification message cannot be shown.
* Verify: Fix resend code if manual resend mode enabled.
* Libnotify: Internal fix.

## 1.9.0

* Verify: Fix pushstatus.
* Verify: Remove support of direct pushes.
* Verify: Change CallUI configuration process.
* Verify: Remove unused parameters from request 'verify'.
* Verify: Add support of manual resends of code.
* Verify: Fix visual bug on code message settings interface.

## 1.8.2

* Verify: Optimize sending verification codes.
* Verify: Fix MobileId.
* Verify: Fix request of new sms code.

## 1.8.1

* Verify: Add security fix.
* Verify: Add information about library version to requests.
* Verify: Add sending parameter external_id to verify. 
* Verify: Fix incorrect behaviour in mobile_id.
* Verify: Add detection of aps environment.

## Version 1.8.0

* Verify: Return CallUI support.
* Verify: Optimize server communication protocol.

## Version 1.7.1

* Verify: Fix double call of NTFVerificationService's delegate method. 

## Version 1.7.0

* Verify: Rollback fixes that were added to support CallUI.

## Version 1.6.2 (Deprecated)

* Verify: Fix twice sending error messages to delegate.  

## Version 1.6.1 (Deprecated)

* Verify: Add some fixes.

## Version 1.6.0 (Deprecated)

* Verify: Add verification parameters to configure verification process.
* Verify: Add logo of service to the incoming verification push.
* Verify: Add some internal fixes and changes.

## Version 1.5.2 (Deprecated)

* Verify: Add some fixes.

## Version 1.5.1 (Deprecated)

* Verify: Fix crash.

## Version 1.5.0 (Deprecated)

* Verify: Add support CallUI.

## Version 1.4.0

* Verify: Add some fixes for VKConnect.

## Version 1.3.0

* Verify: Add verification by user_id.
* Verify: Add verification through VKConnect.

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


