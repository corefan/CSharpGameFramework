﻿using System;
using System.Collections.Generic;
using System.Text;
using CSharpCenterClient;
using GameFramework;
using GameFrameworkMessage;

namespace GameFramework
{
  internal partial class UserServer
  {
    /// <summary>
    /// 注意，node来的消息处理需要分发到DataProcess的用户线程里进行处理！
    /// 注意，GM工具消息与客户端GM消息不要混用，实现代码要分开放（后面代码里有有标注，客户端的GM消息处理在前，GM工具的在后，中间有分隔区）！！！
    /// </summary>
    private void InstallGmJsonHandlers()
    {
      //客户端GM消息

      if (UserServerConfig.WorldIdNum > 0) {
        JsonGmMessageDispatcher.Init(UserServerConfig.WorldId1);
        //GM工具消息
      }
    }

    //--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    //************************************************************需要GM权限的消息处理******************************************************************************************
    //--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
    //--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    //************************************************************GM工具消息处理结束，不要在这后面添加逻辑消息，放到普通消息处理文件里面！！！********************************************
    //--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  }
}
