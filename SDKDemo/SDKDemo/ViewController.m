
#import "ViewController.h"
#import <GSDK/DBSDK.h>

@interface ViewController () <SDKPayDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [DBSDK sharedSDK].delegate = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)loginBtnTap:(UIButton *)sender {
    
    
    /**
     登陆方法

     @param sessionID 用于二次验证
     @param sdkUid    平台用户id
     */
    [[DBSDK sharedSDK] loginWithSuccessCallBack:^(NSString *sessionID, NSString *sdkUid) {
        if (sdkUid.length != 0) {
            NSLog(@"登陆成功，进入游戏");
            NSLog(@"当前的登陆的用户信息：uid = %@，sessionid = %@ ", sdkUid, sessionID);
            NSString *tipStr = [NSString stringWithFormat:@"uid=%@\nsessionid=%@", sdkUid, sessionID];
            UIAlertView *alertV = [[UIAlertView alloc] initWithTitle:@"提醒" message:tipStr delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            [alertV show];
            
            
        }
    }];
}


- (IBAction)payClick:(UIButton *)sender {
    
    
//    int x = arc4random() % 100;
//    for (int i = 0; i < 10; i++) {
//        
//    }
    
    NSString *strRandom = @"";
    for(int i=0; i<10; i++)
    {
        strRandom = [ strRandom stringByAppendingFormat:@"%i",(arc4random() % 100)];
    }
    
    
    /**
     支付下单
     
      money          金额
      server_id      服务器id
      gold           金币
      role_id        角色id
      role_name      角色名
      cp_order_id    订单
      product_id     productid(苹果后台商品档次)
      product_name   商品名
     
     */
    NSDictionary *infoDict = @{
                               @"money"          : @"6", // 以元为单位
                               @"server_id"      : @"1",
                               @"gold"           : @"60",
                               @"role_id"        : @"123123",
                               @"role_name"      : @"角色名",
                               @"cp_order_id"    : strRandom,
                               @"product_id"     : @"com.tgkd.game.youxi.60",
                               @"product_name"   : @"60砖石"
                               };
    [[DBSDK sharedSDK] buyGoods:infoDict];
    
    
}

#pragma mark - delegate
- (void)SDKPaySuccess
{
    NSLog(@"购买成功");
}

- (void)SDKPayFailure:(NSString *)errorMsg
{
    NSLog(@"购买失败：%@", errorMsg);
}

@end
