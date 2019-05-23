Change Log
==========
Version 1.1.5 *(23rd May, 2019)*
------------------------------------------
*(Supports Adjust 4.17.2)*

  * [Improvement] Bumping SDK version from 4.15 to 4.17.2

Version 1.1.4 *(1st November, 2018)*
------------------------------------------
*(Supports Adjust 4.15)*

  * [Improvement](https://github.com/segment-integrations/analytics-ios-integration-adjust/pull/17): Adds SDK signature to mitigate SDK spoofing, GDPR [Right to be Forgotten Function](https://github.com/adjust/android_sdk#gdpr-right-to-be-forgotten), [Push Token collection]( https://github.com/adjust/android_sdk#push-token) for use in our Audience Builder and Uninstall/Reinstall features, and fraud prevention.


Version 1.1.3 *(23rd October, 2017)*
------------------------------------------
*(Supports analytics-ios 3.0+ and Adjust 4.10+)*

  * [Improvement](https://github.com/segment-integrations/analytics-ios-integration-adjust/pull/14): Adds setting to configure [delayed start for Adjust SDK](https://github.com/adjust/ios_sdk#delay-start). Configure a delay via the `setDelay` and `delayTime` settings to ensure all session parameters have been loaded properly.

Version 1.1.2 *(30th August, 2017)*
------------------------------------------
*(Supports analytics-ios 3.0+ and Adjust 4.10+)*

  * [Fix](https://github.com/segment-integrations/analytics-ios-integration-adjust/pull/10): Sets Segment's `anonymousId` in Adjust via Adjust's `setSessionPartnerParameter` method, on all `track` calls. This will ensure that the value is set and sent back on `Install Attributed` events.

Version 1.1.1 *(14th July, 2017)*
------------------------------------------
*(Supports analytics-ios 3.0+ and Adjust 4.10+)*

  * [Fix](https://github.com/segment-integrations/analytics-ios-integration-adjust/pull/6/files): Adds default value to prevent crash from nil value.

Version 1.1.0 *(6th July, 2017)*
------------------------------------------
*(Supports analytics-ios 3.0+ and Adjust 4.10+)*

  * [New](https://github.com/segment-integrations/analytics-ios-integration-adjust/pull/1/files): Tracks attribution data.
  * [New](https://github.com/segment-integrations/analytics-ios-integration-adjust/pull/5/files): Maps to Identify and Reset via Adjust's [addSessionPartnerParameter](https://github.com/adjust/ios_sdk#session-partner-parameters) methods.

Version 1.0.2 *(3rd October, 2016)*
------------------------------------------
*(Supports analytics-ios 3.0+ and Adjust 4.10+)*

  * [Update](https://github.com/segment-integrations/analytics-ios-integration-adjust/pull/2/commits/19d6931b51334ce72c20bbad56fec7c6c3a7f6d9): Bumps Adjust dependency to [latest version](https://cocoapods.org/pods/Adjust)

Version 1.0.1 *(24th August, 2016)*
------------------------------------------
*(Supports analytics-ios 3.0+)*

 * [Fix](https://github.com/segment-integrations/analytics-ios-integration-adjust/commit/26f40802680e8effa30c06146304575aab07fddb): Allow integration to work with any version of the analytics sdk 3.1 or higher
 * [Fix](https://github.com/segment-integrations/analytics-ios-integration-adjust/commit/56720f46a67acd0600a9fca149a7b2302be5b347): Fix return type of instance method in SEGIntegrationFactory to return `SEGIntegrationFactory` not `id`

Version 1.0.0-alpha *(26th March, 2016)*
-------------------------------------------
*(Supports analytics-ios 3.0.+ and Adjust 4.6.0+)*

Initial release.
