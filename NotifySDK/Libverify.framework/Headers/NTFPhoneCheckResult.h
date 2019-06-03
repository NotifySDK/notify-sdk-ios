#import <Foundation/Foundation.h>

#import <Libverify/NTFVerifyConstants.h>

@protocol NTFExtendedPhoneInfo;

NS_ASSUME_NONNULL_BEGIN

/**
 * Represents a result of {@link VerificationApi#checkPhoneNumber} method call. It provides necessary
 * information for a phone verification UI logic, which could show to a user hints about currently entered
 * phone number.
 * */
@protocol NTFPhoneCheckResult
/**
 * Returns general result of the current phone validation request. If returned value equals to
 * {@link ru.mail.libverify.api.VerificationApi.FailReason#OK}, UI logic can use those results,
 * otherwise it should hide any hints (no network connection, server failure etc). It is important to
 * allow user continue phone verification procedure if exact phone information has not available yet.
 * */
@property(nonatomic, readonly) NTFVerificationFailReason reason;
/**
 * Returns current phone number state {@link VerificationApi.PhoneCheckResult.State} according
 * to the internal libverify API logic which includes correctness for a particular country code, spam,
 * black list and some other checks.
 * */
@property(nonatomic, readonly) NTFPhoneCheckState state;

/**
 * Returns true if user has entered valid phone number and it is possible to send an SMS or
 * make IVR call to it, otherwise - false. For more info, check {@link VerificationApi.PhoneCheckResult.State}.
 * */
@property(nonatomic, readonly) BOOL isValid;

/**
 * Returns true if libverify API is not able to report any information about this phone number,
 * otherwise false. For more info, check {@link VerificationApi.PhoneCheckResult.State}.
 * */
@property(nonatomic, readonly) BOOL isUnknown;

/**
 * Returns true if libverify API considers provided text as an illegal or incomplete phone number,
 * otherwise false. For more info, check {@link VerificationApi.PhoneCheckResult.State}.
 * */
@property(nonatomic, readonly) BOOL isInvalid;

/**
 * Returns true if libverify API considers provided text as an invalid phone number
 * (unknown operator for this particular country), otherwise false. An application should mark
 * a phone number text filed as wrong.
 * For more info, check {@link VerificationApi.PhoneCheckResult.State}
 * and {@link VerificationApi.PhoneCheckResult#getExtendedInfo}.
 * */
@property(nonatomic, readonly) BOOL isWarning;

/**
 * Returns localized (system phone locale will be used) text messages, describing current
 * phone number. An application can show those hint texts to a user. In most cases it will return single
 * element array, notifying about remaining phone number length like
 * ["2 digits required"],
 * but sometimes it could contain two items like
 * ["prefix changed to +7 for country Russian Federation","you are entering a landline phone number"].
 * So, an application interface should be prepared for a such long messages.
 * */
@property(nonatomic, readonly, nullable) NSArray<NSString *> * printableText;

/**
 * Returns an extended phone number info if {@link VerificationApi#checkPhoneNumber} <b>method param
 * extendedInfo is equal to true</b>, otherwise - null (also it could return null, if an extended info is not available
 * for this particular phone number).
 */
@property(nonatomic, readonly, nullable) id<NTFExtendedPhoneInfo> extendedPhoneInfo;

/**
 * Returns false if this {@link PhoneCheckResult} object instance has been created as a result of
 * a direct libverify API server response, otherwise - true (this means that libverify has tried to predict
 * phone number validity according to an already received responses).
 */
@property(nonatomic, readonly) BOOL isApproximate;

@end

/**
 * Describes extended phone number extended info.
 * Note, that {@link VerificationApi.PhoneCheckResult.ExtendedInfo#isMobile} and
 * {@link VerificationApi.PhoneCheckResult.ExtendedInfo#isFixedLine} could be both equal true,
 * which means, that this phone number suits both pattern.
 * */
@protocol NTFExtendedPhoneInfo
/**
 * Returns true if this is phone number matches mobile phone pattern for a particular country,
 * otherwise false.
 * */
@property(nonatomic, readonly) BOOL isMobile;

/**
 * Returns true if this is phone number matches landline phone pattern for a particular country,
 * otherwise false.
 * */
@property(nonatomic, readonly) BOOL isFixedLine;

/**
 * Returns amount of remaining digits to form a complete phone number.
 * Note, that it could be set to null, if there is no any information about this phone
 * number length in libverify API answer.
 * */
@property(nonatomic, readonly, nullable) NSNumber * remainingLength;

/**
 * Returns modified by libverify API phone number. There are number of rules for mobile
 * phone corrections based on an each country prefixes and phone number structure, that could be
 * applied to fix potential user mistakes. An application should update a phone number text field
 * if the returned value is not equal to the actual input.
 * Note, that it contains full phone number in international format (with leading '+').
 * */
@property(nonatomic, readonly, copy, nullable) NSString * modifiedPhoneNumber;

/**
 * Returns modified by libverify API phone number prefix.
 * See more in {@link ExtendedInfo#getModifiedPhoneNumber()}.
 * Note, that it contains phone number prefix in international format (with leading '+').
 * */
@property(nonatomic, readonly, copy, nullable) NSString * modifiedPrefix;

@end

NS_ASSUME_NONNULL_END
