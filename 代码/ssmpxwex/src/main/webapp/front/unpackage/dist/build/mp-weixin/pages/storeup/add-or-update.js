(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/storeup/add-or-update"],{"033a":function(e,t,r){"use strict";(function(e){Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var n=a(r("a34a"));function a(e){return e&&e.__esModule?e:{default:e}}function u(e,t,r,n,a,u,i){try{var o=e[u](i),c=o.value}catch(s){return void r(s)}o.done?t(c):Promise.resolve(c).then(n,a)}function i(e){return function(){var t=this,r=arguments;return new Promise((function(n,a){var i=e.apply(t,r);function o(e){u(i,n,a,o,c,"next",e)}function c(e){u(i,n,a,o,c,"throw",e)}o(void 0)}))}}var o=function(){Promise.all([r.e("common/vendor"),r.e("components/w-picker/w-picker")]).then(function(){return resolve(r("e8b4"))}.bind(null,r)).catch(r.oe)},c={data:function(){return{ruleForm:{userid:"",refid:"",tablename:"",name:"",picture:""},user:{},ro:{userid:!1,refid:!1,tablename:!1,name:!1,picture:!1}}},components:{wPicker:o},computed:{},onLoad:function(t){var r=this;return i(n.default.mark((function a(){var u,i,o,c;return n.default.wrap((function(a){while(1)switch(a.prev=a.next){case 0:return u=e.getStorageSync("nowTable"),a.next=3,r.$api.session(u);case 3:if(i=a.sent,r.user=i.data,r.ruleForm.userid=e.getStorageSync("userid"),t.refid&&(r.ruleForm.refid=t.refid,r.ruleForm.nickname=e.getStorageSync("nickname")),!t.id){a.next=13;break}return r.ruleForm.id=t.id,a.next=11,r.$api.info("storeup",r.ruleForm.id);case 11:i=a.sent,r.ruleForm=i.data;case 13:if(!t.cross){a.next=40;break}o=e.getStorageSync("crossObj"),a.t0=n.default.keys(o);case 16:if((a.t1=a.t0()).done){a.next=40;break}if(c=a.t1.value,"userid"!=c){a.next=22;break}return r.ruleForm.userid=o[c],r.ro.userid=!0,a.abrupt("continue",16);case 22:if("refid"!=c){a.next=26;break}return r.ruleForm.refid=o[c],r.ro.refid=!0,a.abrupt("continue",16);case 26:if("tablename"!=c){a.next=30;break}return r.ruleForm.tablename=o[c],r.ro.tablename=!0,a.abrupt("continue",16);case 30:if("name"!=c){a.next=34;break}return r.ruleForm.name=o[c],r.ro.name=!0,a.abrupt("continue",16);case 34:if("picture"!=c){a.next=38;break}return r.ruleForm.picture=o[c],r.ro.picture=!0,a.abrupt("continue",16);case 38:a.next=16;break;case 40:r.styleChange();case 41:case"end":return a.stop()}}),a)})))()},methods:{styleChange:function(){this.$nextTick((function(){}))},pictureTap:function(){var e=this;this.$api.upload((function(t){e.ruleForm.picture=e.$base.url+"upload/"+t.file,e.$forceUpdate(),e.$nextTick((function(){e.styleChange()}))}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var e=this;return i(n.default.mark((function t(){return n.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(e.ruleForm.userid){t.next=3;break}return e.$utils.msg("用户id不能为空"),t.abrupt("return");case 3:if(e.ruleForm.name){t.next=6;break}return e.$utils.msg("收藏名称不能为空"),t.abrupt("return");case 6:if(e.ruleForm.picture){t.next=9;break}return e.$utils.msg("收藏图片不能为空"),t.abrupt("return");case 9:if(!e.ruleForm.id){t.next=14;break}return t.next=12,e.$api.update("storeup",e.ruleForm);case 12:t.next=16;break;case 14:return t.next=16,e.$api.add("storeup",e.ruleForm);case 16:e.$utils.msgBack("提交成功");case 17:case"end":return t.stop()}}),t)})))()},optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var t=new Date,r=t.getFullYear(),n=t.getMonth()+1,a=t.getDate();return"start"===e?r-=60:"end"===e&&(r+=2),n=n>9?n:"0"+n,a=a>9?a:"0"+a,"".concat(r,"-").concat(n,"-").concat(a)},toggleTab:function(e){this.$refs[e].show()}}};t.default=c}).call(this,r("543d")["default"])},"19cc":function(e,t,r){"use strict";r.r(t);var n=r("033a"),a=r.n(n);for(var u in n)"default"!==u&&function(e){r.d(t,e,(function(){return n[e]}))}(u);t["default"]=a.a},"2c84":function(e,t,r){},4577:function(e,t,r){"use strict";r.r(t);var n=r("8b3c"),a=r("19cc");for(var u in a)"default"!==u&&function(e){r.d(t,e,(function(){return a[e]}))}(u);r("71b1");var i,o=r("f0c5"),c=Object(o["a"])(a["default"],n["b"],n["c"],!1,null,"945dab3a",null,!1,n["a"],i);t["default"]=c.exports},"71b1":function(e,t,r){"use strict";var n=r("2c84"),a=r.n(n);a.a},"8b3c":function(e,t,r){"use strict";var n;r.d(t,"b",(function(){return a})),r.d(t,"c",(function(){return u})),r.d(t,"a",(function(){return n}));var a=function(){var e=this,t=e.$createElement;e._self._c},u=[]},f756:function(e,t,r){"use strict";(function(e){r("b14a");n(r("66fd"));var t=n(r("4577"));function n(e){return e&&e.__esModule?e:{default:e}}e(t.default)}).call(this,r("543d")["createPage"])}},[["f756","common/runtime","common/vendor"]]]);