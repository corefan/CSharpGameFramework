﻿using System;
using LuaInterface;
using SLua;
using System.Collections.Generic;
public class Lua_GameFrameworkMessage_Msg_LC_SyncItemList : LuaObject {
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int constructor(IntPtr l) {
		try {
			GameFrameworkMessage.Msg_LC_SyncItemList o;
			o=new GameFrameworkMessage.Msg_LC_SyncItemList();
			pushValue(l,true);
			pushValue(l,o);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int get_m_Items(IntPtr l) {
		try {
			GameFrameworkMessage.Msg_LC_SyncItemList self=(GameFrameworkMessage.Msg_LC_SyncItemList)checkSelf(l);
			pushValue(l,true);
			pushValue(l,self.m_Items);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	static public void reg(IntPtr l) {
		getTypeTable(l,"GameFrameworkMessage.Msg_LC_SyncItemList");
		addMember(l,"m_Items",get_m_Items,null,true);
		createTypeMetatable(l,constructor, typeof(GameFrameworkMessage.Msg_LC_SyncItemList));
	}
}
