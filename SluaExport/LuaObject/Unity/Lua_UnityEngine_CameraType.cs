﻿using System;
using LuaInterface;
using SLua;
using System.Collections.Generic;
public class Lua_UnityEngine_CameraType : LuaObject {
	static public void reg(IntPtr l) {
		getEnumTable(l,"UnityEngine.CameraType");
		addMember(l,1,"Game");
		addMember(l,2,"SceneView");
		addMember(l,4,"Preview");
		addMember(l,8,"VR");
		LuaDLL.lua_pop(l, 1);
	}
}
