﻿using System;
using LuaInterface;
using SLua;
using System.Collections.Generic;
public class Lua_GameFramework_AttrCalc_AttrExpressionList : LuaObject {
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int constructor(IntPtr l) {
		try {
			int argc = LuaDLL.lua_gettop(l);
			GameFramework.AttrCalc.AttrExpressionList o;
			if(argc==1){
				o=new GameFramework.AttrCalc.AttrExpressionList();
				pushValue(l,true);
				pushValue(l,o);
				return 2;
			}
			else if(argc==2){
				System.Collections.Generic.IEnumerable<GameFramework.AttrCalc.IAttrExpression> a1;
				checkType(l,2,out a1);
				o=new GameFramework.AttrCalc.AttrExpressionList(a1);
				pushValue(l,true);
				pushValue(l,o);
				return 2;
			}
			return error(l,"New object failed.");
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int Add(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			GameFramework.AttrCalc.IAttrExpression a1;
			checkType(l,2,out a1);
			self.Add(a1);
			pushValue(l,true);
			return 1;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int AddRange(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			System.Collections.Generic.IEnumerable<GameFramework.AttrCalc.IAttrExpression> a1;
			checkType(l,2,out a1);
			self.AddRange(a1);
			pushValue(l,true);
			return 1;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int AsReadOnly(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			var ret=self.AsReadOnly();
			pushValue(l,true);
			pushValue(l,ret);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int BinarySearch(IntPtr l) {
		try {
			int argc = LuaDLL.lua_gettop(l);
			if(argc==2){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				GameFramework.AttrCalc.IAttrExpression a1;
				checkType(l,2,out a1);
				var ret=self.BinarySearch(a1);
				pushValue(l,true);
				pushValue(l,ret);
				return 2;
			}
			else if(argc==3){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				GameFramework.AttrCalc.IAttrExpression a1;
				checkType(l,2,out a1);
				System.Collections.Generic.IComparer<GameFramework.AttrCalc.IAttrExpression> a2;
				checkType(l,3,out a2);
				var ret=self.BinarySearch(a1,a2);
				pushValue(l,true);
				pushValue(l,ret);
				return 2;
			}
			else if(argc==5){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				System.Int32 a1;
				checkType(l,2,out a1);
				System.Int32 a2;
				checkType(l,3,out a2);
				GameFramework.AttrCalc.IAttrExpression a3;
				checkType(l,4,out a3);
				System.Collections.Generic.IComparer<GameFramework.AttrCalc.IAttrExpression> a4;
				checkType(l,5,out a4);
				var ret=self.BinarySearch(a1,a2,a3,a4);
				pushValue(l,true);
				pushValue(l,ret);
				return 2;
			}
			pushValue(l,false);
			LuaDLL.lua_pushstring(l,"No matched override function to call");
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int Clear(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			self.Clear();
			pushValue(l,true);
			return 1;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int Contains(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			GameFramework.AttrCalc.IAttrExpression a1;
			checkType(l,2,out a1);
			var ret=self.Contains(a1);
			pushValue(l,true);
			pushValue(l,ret);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int Exists(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			System.Predicate<GameFramework.AttrCalc.IAttrExpression> a1;
			LuaDelegation.checkDelegate(l,2,out a1);
			var ret=self.Exists(a1);
			pushValue(l,true);
			pushValue(l,ret);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int Find(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			System.Predicate<GameFramework.AttrCalc.IAttrExpression> a1;
			LuaDelegation.checkDelegate(l,2,out a1);
			var ret=self.Find(a1);
			pushValue(l,true);
			pushValue(l,ret);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int FindAll(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			System.Predicate<GameFramework.AttrCalc.IAttrExpression> a1;
			LuaDelegation.checkDelegate(l,2,out a1);
			var ret=self.FindAll(a1);
			pushValue(l,true);
			pushValue(l,ret);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int FindIndex(IntPtr l) {
		try {
			int argc = LuaDLL.lua_gettop(l);
			if(argc==2){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				System.Predicate<GameFramework.AttrCalc.IAttrExpression> a1;
				LuaDelegation.checkDelegate(l,2,out a1);
				var ret=self.FindIndex(a1);
				pushValue(l,true);
				pushValue(l,ret);
				return 2;
			}
			else if(argc==3){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				System.Int32 a1;
				checkType(l,2,out a1);
				System.Predicate<GameFramework.AttrCalc.IAttrExpression> a2;
				LuaDelegation.checkDelegate(l,3,out a2);
				var ret=self.FindIndex(a1,a2);
				pushValue(l,true);
				pushValue(l,ret);
				return 2;
			}
			else if(argc==4){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				System.Int32 a1;
				checkType(l,2,out a1);
				System.Int32 a2;
				checkType(l,3,out a2);
				System.Predicate<GameFramework.AttrCalc.IAttrExpression> a3;
				LuaDelegation.checkDelegate(l,4,out a3);
				var ret=self.FindIndex(a1,a2,a3);
				pushValue(l,true);
				pushValue(l,ret);
				return 2;
			}
			pushValue(l,false);
			LuaDLL.lua_pushstring(l,"No matched override function to call");
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int FindLast(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			System.Predicate<GameFramework.AttrCalc.IAttrExpression> a1;
			LuaDelegation.checkDelegate(l,2,out a1);
			var ret=self.FindLast(a1);
			pushValue(l,true);
			pushValue(l,ret);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int FindLastIndex(IntPtr l) {
		try {
			int argc = LuaDLL.lua_gettop(l);
			if(argc==2){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				System.Predicate<GameFramework.AttrCalc.IAttrExpression> a1;
				LuaDelegation.checkDelegate(l,2,out a1);
				var ret=self.FindLastIndex(a1);
				pushValue(l,true);
				pushValue(l,ret);
				return 2;
			}
			else if(argc==3){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				System.Int32 a1;
				checkType(l,2,out a1);
				System.Predicate<GameFramework.AttrCalc.IAttrExpression> a2;
				LuaDelegation.checkDelegate(l,3,out a2);
				var ret=self.FindLastIndex(a1,a2);
				pushValue(l,true);
				pushValue(l,ret);
				return 2;
			}
			else if(argc==4){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				System.Int32 a1;
				checkType(l,2,out a1);
				System.Int32 a2;
				checkType(l,3,out a2);
				System.Predicate<GameFramework.AttrCalc.IAttrExpression> a3;
				LuaDelegation.checkDelegate(l,4,out a3);
				var ret=self.FindLastIndex(a1,a2,a3);
				pushValue(l,true);
				pushValue(l,ret);
				return 2;
			}
			pushValue(l,false);
			LuaDLL.lua_pushstring(l,"No matched override function to call");
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int ForEach(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			System.Action<GameFramework.AttrCalc.IAttrExpression> a1;
			LuaDelegation.checkDelegate(l,2,out a1);
			self.ForEach(a1);
			pushValue(l,true);
			return 1;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int GetRange(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			System.Int32 a1;
			checkType(l,2,out a1);
			System.Int32 a2;
			checkType(l,3,out a2);
			var ret=self.GetRange(a1,a2);
			pushValue(l,true);
			pushValue(l,ret);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int IndexOf(IntPtr l) {
		try {
			int argc = LuaDLL.lua_gettop(l);
			if(argc==2){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				GameFramework.AttrCalc.IAttrExpression a1;
				checkType(l,2,out a1);
				var ret=self.IndexOf(a1);
				pushValue(l,true);
				pushValue(l,ret);
				return 2;
			}
			else if(argc==3){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				GameFramework.AttrCalc.IAttrExpression a1;
				checkType(l,2,out a1);
				System.Int32 a2;
				checkType(l,3,out a2);
				var ret=self.IndexOf(a1,a2);
				pushValue(l,true);
				pushValue(l,ret);
				return 2;
			}
			else if(argc==4){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				GameFramework.AttrCalc.IAttrExpression a1;
				checkType(l,2,out a1);
				System.Int32 a2;
				checkType(l,3,out a2);
				System.Int32 a3;
				checkType(l,4,out a3);
				var ret=self.IndexOf(a1,a2,a3);
				pushValue(l,true);
				pushValue(l,ret);
				return 2;
			}
			pushValue(l,false);
			LuaDLL.lua_pushstring(l,"No matched override function to call");
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int Insert(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			System.Int32 a1;
			checkType(l,2,out a1);
			GameFramework.AttrCalc.IAttrExpression a2;
			checkType(l,3,out a2);
			self.Insert(a1,a2);
			pushValue(l,true);
			return 1;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int InsertRange(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			System.Int32 a1;
			checkType(l,2,out a1);
			System.Collections.Generic.IEnumerable<GameFramework.AttrCalc.IAttrExpression> a2;
			checkType(l,3,out a2);
			self.InsertRange(a1,a2);
			pushValue(l,true);
			return 1;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int LastIndexOf(IntPtr l) {
		try {
			int argc = LuaDLL.lua_gettop(l);
			if(argc==2){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				GameFramework.AttrCalc.IAttrExpression a1;
				checkType(l,2,out a1);
				var ret=self.LastIndexOf(a1);
				pushValue(l,true);
				pushValue(l,ret);
				return 2;
			}
			else if(argc==3){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				GameFramework.AttrCalc.IAttrExpression a1;
				checkType(l,2,out a1);
				System.Int32 a2;
				checkType(l,3,out a2);
				var ret=self.LastIndexOf(a1,a2);
				pushValue(l,true);
				pushValue(l,ret);
				return 2;
			}
			else if(argc==4){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				GameFramework.AttrCalc.IAttrExpression a1;
				checkType(l,2,out a1);
				System.Int32 a2;
				checkType(l,3,out a2);
				System.Int32 a3;
				checkType(l,4,out a3);
				var ret=self.LastIndexOf(a1,a2,a3);
				pushValue(l,true);
				pushValue(l,ret);
				return 2;
			}
			pushValue(l,false);
			LuaDLL.lua_pushstring(l,"No matched override function to call");
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int Remove(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			GameFramework.AttrCalc.IAttrExpression a1;
			checkType(l,2,out a1);
			var ret=self.Remove(a1);
			pushValue(l,true);
			pushValue(l,ret);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int RemoveAll(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			System.Predicate<GameFramework.AttrCalc.IAttrExpression> a1;
			LuaDelegation.checkDelegate(l,2,out a1);
			var ret=self.RemoveAll(a1);
			pushValue(l,true);
			pushValue(l,ret);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int RemoveAt(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			System.Int32 a1;
			checkType(l,2,out a1);
			self.RemoveAt(a1);
			pushValue(l,true);
			return 1;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int RemoveRange(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			System.Int32 a1;
			checkType(l,2,out a1);
			System.Int32 a2;
			checkType(l,3,out a2);
			self.RemoveRange(a1,a2);
			pushValue(l,true);
			return 1;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int Reverse(IntPtr l) {
		try {
			int argc = LuaDLL.lua_gettop(l);
			if(argc==1){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				self.Reverse();
				pushValue(l,true);
				return 1;
			}
			else if(argc==3){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				System.Int32 a1;
				checkType(l,2,out a1);
				System.Int32 a2;
				checkType(l,3,out a2);
				self.Reverse(a1,a2);
				pushValue(l,true);
				return 1;
			}
			pushValue(l,false);
			LuaDLL.lua_pushstring(l,"No matched override function to call");
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int Sort(IntPtr l) {
		try {
			int argc = LuaDLL.lua_gettop(l);
			if(argc==1){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				self.Sort();
				pushValue(l,true);
				return 1;
			}
			else if(matchType(l,argc,2,typeof(System.Comparison<GameFramework.AttrCalc.IAttrExpression>))){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				System.Comparison<GameFramework.AttrCalc.IAttrExpression> a1;
				LuaDelegation.checkDelegate(l,2,out a1);
				self.Sort(a1);
				pushValue(l,true);
				return 1;
			}
			else if(matchType(l,argc,2,typeof(IComparer<GameFramework.AttrCalc.IAttrExpression>))){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				System.Collections.Generic.IComparer<GameFramework.AttrCalc.IAttrExpression> a1;
				checkType(l,2,out a1);
				self.Sort(a1);
				pushValue(l,true);
				return 1;
			}
			else if(argc==4){
				GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
				System.Int32 a1;
				checkType(l,2,out a1);
				System.Int32 a2;
				checkType(l,3,out a2);
				System.Collections.Generic.IComparer<GameFramework.AttrCalc.IAttrExpression> a3;
				checkType(l,4,out a3);
				self.Sort(a1,a2,a3);
				pushValue(l,true);
				return 1;
			}
			pushValue(l,false);
			LuaDLL.lua_pushstring(l,"No matched override function to call");
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int ToArray(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			var ret=self.ToArray();
			pushValue(l,true);
			pushValue(l,ret);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int TrimExcess(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			self.TrimExcess();
			pushValue(l,true);
			return 1;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int TrueForAll(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			System.Predicate<GameFramework.AttrCalc.IAttrExpression> a1;
			LuaDelegation.checkDelegate(l,2,out a1);
			var ret=self.TrueForAll(a1);
			pushValue(l,true);
			pushValue(l,ret);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int get_Capacity(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			pushValue(l,true);
			pushValue(l,self.Capacity);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int set_Capacity(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			int v;
			checkType(l,2,out v);
			self.Capacity=v;
			pushValue(l,true);
			return 1;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int get_Count(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			pushValue(l,true);
			pushValue(l,self.Count);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int getItem(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			int v;
			checkType(l,2,out v);
			var ret = self[v];
			pushValue(l,true);
			pushValue(l,ret);
			return 2;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static public int setItem(IntPtr l) {
		try {
			GameFramework.AttrCalc.AttrExpressionList self=(GameFramework.AttrCalc.AttrExpressionList)checkSelf(l);
			int v;
			checkType(l,2,out v);
			GameFramework.AttrCalc.IAttrExpression c;
			checkType(l,3,out c);
			self[v]=c;
			pushValue(l,true);
			return 1;
		}
		catch(Exception e) {
			return error(l,e);
		}
	}
	static public void reg(IntPtr l) {
		getTypeTable(l,"GameFramework.AttrCalc.AttrExpressionList");
		addMember(l,Add);
		addMember(l,AddRange);
		addMember(l,AsReadOnly);
		addMember(l,BinarySearch);
		addMember(l,Clear);
		addMember(l,Contains);
		addMember(l,Exists);
		addMember(l,Find);
		addMember(l,FindAll);
		addMember(l,FindIndex);
		addMember(l,FindLast);
		addMember(l,FindLastIndex);
		addMember(l,ForEach);
		addMember(l,GetRange);
		addMember(l,IndexOf);
		addMember(l,Insert);
		addMember(l,InsertRange);
		addMember(l,LastIndexOf);
		addMember(l,Remove);
		addMember(l,RemoveAll);
		addMember(l,RemoveAt);
		addMember(l,RemoveRange);
		addMember(l,Reverse);
		addMember(l,Sort);
		addMember(l,ToArray);
		addMember(l,TrimExcess);
		addMember(l,TrueForAll);
		addMember(l,getItem);
		addMember(l,setItem);
		addMember(l,"Capacity",get_Capacity,set_Capacity,true);
		addMember(l,"Count",get_Count,null,true);
		createTypeMetatable(l,constructor, typeof(GameFramework.AttrCalc.AttrExpressionList),typeof(System.Collections.Generic.List<GameFramework.AttrCalc.IAttrExpression>));
	}
}
