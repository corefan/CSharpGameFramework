﻿using System;
using LuaInterface;
using SLua;
using System.Collections.Generic;
public class Lua_UnityEngine_Experimental_Director_AnimationMixerPlayable : LuaObject {
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int constructor(IntPtr l) {
		try {
			UnityEngine.Experimental.Director.AnimationMixerPlayable o;
			o=new UnityEngine.Experimental.Director.AnimationMixerPlayable();
			pushValue(l,true);
			pushValue(l,o);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int get_handle(IntPtr l) {
		try {
			UnityEngine.Experimental.Director.AnimationMixerPlayable self=(UnityEngine.Experimental.Director.AnimationMixerPlayable)checkSelf(l);
			pushValue(l,true);
			pushValue(l,self.handle);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int set_handle(IntPtr l) {
		try {
			UnityEngine.Experimental.Director.AnimationMixerPlayable self=(UnityEngine.Experimental.Director.AnimationMixerPlayable)checkSelf(l);
			UnityEngine.Experimental.Director.PlayableHandle v;
			checkValueType(l,2,out v);
			self.handle=v;
			pushValue(l,true);
			return 1;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	static public void reg(IntPtr l) {
		getTypeTable(l,"UnityEngine.Experimental.Director.AnimationMixerPlayable");
		addMember(l,"handle",get_handle,set_handle,true);
		createTypeMetatable(l,constructor, typeof(UnityEngine.Experimental.Director.AnimationMixerPlayable),typeof(UnityEngine.Experimental.Director.AnimationPlayable));
	}
}
