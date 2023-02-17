# Change Log

## version 3.1.5 _(17th February, 2023)_

- Bump Adjust SDK to version 4.30.0 which includes ATT tracking authorization support.

## Version 3.1.4 _(27th October, 2021)_

- Fix for localised revenue

## Version 3.1.2 _(30th June, 2021)_

_(Supports Adjust 4.29.3)_

- Bump Adjust SDK to version 4.29.3 which includes a new deduplicate ID, e.g. for Apple Ad campaigns.

## Version 3.1.1 _(13th April, 2021)_

_(Supports Adjust 4.28)_

- Bump Adjust SDK to Adjust iOS 14 compatibility.

## Version 3.1.0 _(7th October, 2020)_

_(Supports Adjust 4.23)_

- Updates import headers for iOS 14 support.

## Version 3.0.0 _(2nd September, 2020)_

_(Supports Adjust 4.23)_

- [New] Adds support for Xcode 12 and iOS14 by bumping Adjust SDK and Segment Analytics to 4.x.

## Version 2.1.0 _(9th January, 2020)_

_(Supports Adjust 4.18.2)_

- [Fix] Fixes issue with `registeredForRemoteNotificationsWithDeviceToken` method that prevented push notifications.

## Version 2.0.0 _(13th September, 2019)_

_(Supports Adjust 4.18.2)_

- [Improvement] Bumping SDK version from 4.17.2 to 4.18.2 which supports device token parsing for iOS 13 and addresses Apple's warning to developers (ITMS-90809) about UIWebView class deprecation
- See [Adjust documentation](https://github.com/adjust/ios_sdk/blob/master/doc/english/web_view_migration.md) on migrating Adjust web bridge. You must switch to usage of WKWebView in your app instead of UIWebView and use following methods instead: `loadWKWebViewBridge:` and `loadWKWebViewBridge:webViewDelegate:`

## Version 1.1.5 _(23rd May, 2019)_

_(Supports Adjust 4.17.2)_

- [Improvement] Bumping SDK version from 4.15 to 4.17.2

## Version 1.1.4 _(1st November, 2018)_

_(Supports Adjust 4.15)_

- [Improvement](https://github.com/segment-integrations/analytics-ios-integration-adjust/pull/17): Adds SDK signature to mitigate SDK spoofing, GDPR [Right to be Forgotten Function](https://github.com/adjust/android_sdk#gdpr-right-to-be-forgotten), [Push Token collection](https://github.com/adjust/android_sdk#push-token) for use in our Audience Builder and Uninstall/Reinstall features, and fraud prevention.

## Version 1.1.3 _(23rd October, 2017)_

_(Supports analytics-ios 3.0+ and Adjust 4.10+)_

- [Improvement](https://github.com/segment-integrations/analytics-ios-integration-adjust/pull/14): Adds setting to configure [delayed start for Adjust SDK](https://github.com/adjust/ios_sdk#delay-start). Configure a delay via the `setDelay` and `delayTime` settings to ensure all session parameters have been loaded properly.

## Version 1.1.2 _(30th August, 2017)_

_(Supports analytics-ios 3.0+ and Adjust 4.10+)_

- [Fix](https://github.com/segment-integrations/analytics-ios-integration-adjust/pull/10): Sets Segment's `anonymousId` in Adjust via Adjust's `setSessionPartnerParameter` method, on all `track` calls. This will ensure that the value is set and sent back on `Install Attributed` events.

## Version 1.1.1 _(14th July, 2017)_

_(Supports analytics-ios 3.0+ and Adjust 4.10+)_

- [Fix](https://github.com/segment-integrations/analytics-ios-integration-adjust/pull/6/files): Adds default value to prevent crash from nil value.

## Version 1.1.0 _(6th July, 2017)_

_(Supports analytics-ios 3.0+ and Adjust 4.10+)_

- [New](https://github.com/segment-integrations/analytics-ios-integration-adjust/pull/1/files): Tracks attribution data.
- [New](https://github.com/segment-integrations/analytics-ios-integration-adjust/pull/5/files): Maps to Identify and Reset via Adjust's [addSessionPartnerParameter](https://github.com/adjust/ios_sdk#session-partner-parameters) methods.

## Version 1.0.2 _(3rd October, 2016)_

_(Supports analytics-ios 3.0+ and Adjust 4.10+)_

- [Update](https://github.com/segment-integrations/analytics-ios-integration-adjust/pull/2/commits/19d6931b51334ce72c20bbad56fec7c6c3a7f6d9): Bumps Adjust dependency to [latest version](https://cocoapods.org/pods/Adjust)

## Version 1.0.1 _(24th August, 2016)_

_(Supports analytics-ios 3.0+)_

- [Fix](https://github.com/segment-integrations/analytics-ios-integration-adjust/commit/26f40802680e8effa30c06146304575aab07fddb): Allow integration to work with any version of the analytics sdk 3.1 or higher
- [Fix](https://github.com/segment-integrations/analytics-ios-integration-adjust/commit/56720f46a67acd0600a9fca149a7b2302be5b347): Fix return type of instance method in SEGIntegrationFactory to return `SEGIntegrationFactory` not `id`

## Version 1.0.0-alpha _(26th March, 2016)_

_(Supports analytics-ios 3.0.+ and Adjust 4.6.0+)_

Initial release.
