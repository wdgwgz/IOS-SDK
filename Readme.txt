DBSDK_V1.0.1
   更新日志：
   去掉内含第三方支付相关代码！
  
   注意：如果已对接V1.0.0版本SDK 替换下对应的GSDK.framework和SDKResources.bundle。
        修改支付回调接口（只保留成功和失败 具体参看demo或文档）
        去掉 alipay 白名单
        删掉自定义URLScheme （根据游戏自身来确定）
        