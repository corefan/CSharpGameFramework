﻿using System;
using LuaInterface;
using SLua;
using System.Collections.Generic;
public class Lua_UnityEngine_Collections_NativeLeakDetection : LuaObject {
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int get_Mode(IntPtr l) {
		try {
			pushValue(l,true);
			pushEnum(l,(int)UnityEngine.Collections.NativeLeakDetection.Mode);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int set_Mode(IntPtr l) {
		try {
			UnityEngine.Collections.NativeLeakDetectionMode v;
			checkEnum(l,2,out v);
			UnityEngine.Collections.NativeLeakDetection.Mode=v;
			pushValue(l,true);
			return 1;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	static public void reg(IntPtr l) {
		getTypeTable(l,"UnityEngine.Collections.NativeLeakDetection");
		addMember(l,"Mode",get_Mode,set_Mode,false);
		createTypeMetatable(l,null, typeof(UnityEngine.Collections.NativeLeakDetection));
	}
}
