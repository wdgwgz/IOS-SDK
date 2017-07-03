
#import <Foundation/Foundation.h>

// 登陆成功后的 回调
typedef void(^loginSuccessBlock)(NSString *sessionID, NSString *sdkUid);

@protocol SDKPayDelegate;
@interface DBSDK : NSObject
@property (nonatomic, weak) id <SDKPayDelegate> delegate;
@property (nonatomic, copy) loginSuccessBlock loginSuccessBlcok;

+ (instancetype)sharedSDK;

// SDK 初始化
- (void)initWithGameID:(NSString *)gameid gameKey:(NSString *)gameKey channelID:(NSString *)channelID;

// 登陆
- (void)loginWithSuccessCallBack:(loginSuccessBlock)callBackBlock;

// 购买
- (void)buyGoods:(NSDictionary *)goodsDict;

@end

@protocol SDKPayDelegate <NSObject>
// 购买成功
- (void)SDKPaySuccess;

// 购买失败
- (void)SDKPayFailure:(NSString *)errorMsg;


@end
