
#import <Foundation/Foundation.h>

// 登陆成功后的 回调
typedef void(^loginSuccessBlock)(NSString *sessionID, NSString *sdkUid);

@protocol SDKBuyDelegate;
@interface DBSDK : NSObject
@property (nonatomic, weak) id <SDKBuyDelegate> delegate;
@property (nonatomic, copy) loginSuccessBlock loginSuccessBlcok;

+ (instancetype)sharedSDK;

// SDK 初始化
- (void)initWithGameID:(NSString *)gameid gameKey:(NSString *)gameKey channelID:(NSString *)channelID;

// 登陆
- (void)loginWithSuccessCallBack:(loginSuccessBlock)callBackBlock;

// 购买
- (void)buyGoods:(NSDictionary *)goodsDict;

@end

@protocol SDKBuyDelegate <NSObject>
// 购买成功
- (void)SDKBuySuccess;

// 购买失败
- (void)SDKBuyFailure:(NSString *)errorMsg;


@end
