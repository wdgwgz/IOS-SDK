

DBSDK_V1.3.0
   更新日志：
   增添自动登录功能
   
   注意：如果已经对接v1.2.0版本SDK 替换下GSDK.framework即可！





DBSDK_V1.2.0
   更新日志：
   修复已知问题！
   
   注意：如果已经对接v1.1.0版本SDK 替换下GSDK.framework 和 SDKResources.bundle
   


DBSDK_V1.1.0
   更新日志：
   去掉了自定义方法中的pay字样！
   
   注意：如果已经对接v1.0.1版本SDK 替换下GSDK.framework
   支付代理名由SDKPayDelegate -> SDKBuyDelegate
   代理方法：SDKPaySuccess -> SDKBuySuccess
           SDKPayFailure: -> SDKBuyFailure:



DBSDK_V1.0.1
   更新日志：
   去掉内含第三方支付相关代码！
  
   注意：如果已对接V1.0.0版本SDK 替换下对应的GSDK.framework和SDKResources.bundle。
        修改支付回调接口（只保留成功和失败 具体参看demo或文档）
        去掉 alipay 白名单
        删掉自定义URLScheme （根据游戏自身来确定）
        