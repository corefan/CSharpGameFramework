﻿using System;
using LuaInterface;
using SLua;
using System.Collections.Generic;
public class Lua_GameFrameworkMessage_Msg_CL_GmLockUser : LuaObject {
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int constructor(IntPtr l) {
		try {
			GameFrameworkMessage.Msg_CL_GmLockUser o;
			o=new GameFrameworkMessage.Msg_CL_GmLockUser();
			pushValue(l,true);
			pushValue(l,o);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int get_m_AccountId(IntPtr l) {
		try {
			GameFrameworkMessage.Msg_CL_GmLockUser self=(GameFrameworkMessage.Msg_CL_GmLockUser)checkSelf(l);
			pushValue(l,true);
			pushValue(l,self.m_AccountId);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int set_m_AccountId(IntPtr l) {
		try {
			GameFrameworkMessage.Msg_CL_GmLockUser self=(GameFrameworkMessage.Msg_CL_GmLockUser)checkSelf(l);
			string v;
			checkType(l,2,out v);
			self.m_AccountId=v;
			pushValue(l,true);
			return 1;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	static public void reg(IntPtr l) {
		getTypeTable(l,"GameFrameworkMessage.Msg_CL_GmLockUser");
		addMember(l,"m_AccountId",get_m_AccountId,set_m_AccountId,true);
		createTypeMetatable(l,constructor, typeof(GameFrameworkMessage.Msg_CL_GmLockUser));
	}
}
