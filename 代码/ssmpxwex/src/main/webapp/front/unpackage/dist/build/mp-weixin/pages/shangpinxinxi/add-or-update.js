(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/shangpinxinxi/add-or-update"],{"01f9":function(e,n,i){"use strict";(function(e){i("b14a");r(i("66fd"));var n=r(i("5407"));function r(e){return e&&e.__esModule?e:{default:e}}e(n.default)}).call(this,i("543d")["createPage"])},5407:function(e,n,i){"use strict";i.r(n);var r=i("7f0d"),t=i("8dde");for(var a in t)"default"!==a&&function(e){i.d(n,e,(function(){return t[e]}))}(a);i("9a52");var u,o=i("f0c5"),c=Object(o["a"])(t["default"],r["b"],r["c"],!1,null,"6bcb6238",null,!1,r["a"],u);n["default"]=c.exports},"5f3f9":function(e,n,i){"use strict";(function(e){Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var r=t(i("a34a"));function t(e){return e&&e.__esModule?e:{default:e}}function a(e,n,i,r,t,a,u){try{var o=e[a](u),c=o.value}catch(s){return void i(s)}o.done?n(c):Promise.resolve(c).then(r,t)}function u(e){return function(){var n=this,i=arguments;return new Promise((function(r,t){var u=e.apply(n,i);function o(e){a(u,r,t,o,c,"next",e)}function c(e){a(u,r,t,o,c,"throw",e)}o(void 0)}))}}var o=function(){Promise.all([i.e("common/vendor"),i.e("components/w-picker/w-picker")]).then(function(){return resolve(i("e8b4"))}.bind(null,i)).catch(i.oe)},c={data:function(){return{ruleForm:{shangpinmingcheng:"",shangpinleixing:"",guige:"",tupian:"",shangpinjieshao:"",maijiazhanghao:"",maijiaxingming:"",thumbsupnum:"",crazilynum:"",clicktime:"",clicknum:"",price:"",userid:""},shangpinleixingOptions:[],shangpinleixingIndex:0,user:{},ro:{shangpinmingcheng:!1,shangpinleixing:!1,guige:!1,tupian:!1,shangpinjieshao:!1,maijiazhanghao:!1,maijiaxingming:!1,thumbsupnum:!1,crazilynum:!1,clicktime:!1,clicknum:!1,price:!1,userid:!1}}},components:{wPicker:o},computed:{},onLoad:function(n){var i=this;return u(r.default.mark((function t(){var a,u,o,c;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return a=e.getStorageSync("nowTable"),t.next=3,i.$api.session(a);case 3:return u=t.sent,i.user=u.data,i.ruleForm.maijiazhanghao=i.user.maijiazhanghao,i.ruleForm.maijiaxingming=i.user.maijiaxingming,t.next=9,i.$api.option("shangpinleixing","shangpinleixing",{});case 9:if(u=t.sent,i.shangpinleixingOptions=u.data,i.ruleForm.userid=e.getStorageSync("userid"),n.refid&&(i.ruleForm.refid=n.refid,i.ruleForm.nickname=e.getStorageSync("nickname")),!n.id){t.next=19;break}return i.ruleForm.id=n.id,t.next=17,i.$api.info("shangpinxinxi",i.ruleForm.id);case 17:u=t.sent,i.ruleForm=u.data;case 19:if(!n.cross){t.next=78;break}o=e.getStorageSync("crossObj"),t.t0=r.default.keys(o);case 22:if((t.t1=t.t0()).done){t.next=78;break}if(c=t.t1.value,"shangpinmingcheng"!=c){t.next=28;break}return i.ruleForm.shangpinmingcheng=o[c],i.ro.shangpinmingcheng=!0,t.abrupt("continue",22);case 28:if("shangpinleixing"!=c){t.next=32;break}return i.ruleForm.shangpinleixing=o[c],i.ro.shangpinleixing=!0,t.abrupt("continue",22);case 32:if("guige"!=c){t.next=36;break}return i.ruleForm.guige=o[c],i.ro.guige=!0,t.abrupt("continue",22);case 36:if("tupian"!=c){t.next=40;break}return i.ruleForm.tupian=o[c],i.ro.tupian=!0,t.abrupt("continue",22);case 40:if("shangpinjieshao"!=c){t.next=44;break}return i.ruleForm.shangpinjieshao=o[c],i.ro.shangpinjieshao=!0,t.abrupt("continue",22);case 44:if("maijiazhanghao"!=c){t.next=48;break}return i.ruleForm.maijiazhanghao=o[c],i.ro.maijiazhanghao=!0,t.abrupt("continue",22);case 48:if("maijiaxingming"!=c){t.next=52;break}return i.ruleForm.maijiaxingming=o[c],i.ro.maijiaxingming=!0,t.abrupt("continue",22);case 52:if("thumbsupnum"!=c){t.next=56;break}return i.ruleForm.thumbsupnum=o[c],i.ro.thumbsupnum=!0,t.abrupt("continue",22);case 56:if("crazilynum"!=c){t.next=60;break}return i.ruleForm.crazilynum=o[c],i.ro.crazilynum=!0,t.abrupt("continue",22);case 60:if("clicktime"!=c){t.next=64;break}return i.ruleForm.clicktime=o[c],i.ro.clicktime=!0,t.abrupt("continue",22);case 64:if("clicknum"!=c){t.next=68;break}return i.ruleForm.clicknum=o[c],i.ro.clicknum=!0,t.abrupt("continue",22);case 68:if("price"!=c){t.next=72;break}return i.ruleForm.price=o[c],i.ro.price=!0,t.abrupt("continue",22);case 72:if("userid"!=c){t.next=76;break}return i.ruleForm.userid=o[c],i.ro.userid=!0,t.abrupt("continue",22);case 76:t.next=22;break;case 78:i.styleChange();case 79:case"end":return t.stop()}}),t)})))()},methods:{styleChange:function(){this.$nextTick((function(){}))},clicktimeConfirm:function(e){console.log(e),this.ruleForm.clicktime=e.result,this.$forceUpdate()},shangpinleixingChange:function(e){this.shangpinleixingIndex=e.target.value,this.ruleForm.shangpinleixing=this.shangpinleixingOptions[this.shangpinleixingIndex]},tupianTap:function(){var e=this;this.$api.upload((function(n){e.ruleForm.tupian=e.$base.url+"upload/"+n.file,e.$forceUpdate(),e.$nextTick((function(){e.styleChange()}))}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var e=this;return u(r.default.mark((function n(){return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:if(!e.ruleForm.thumbsupnum||e.$validate.isIntNumer(e.ruleForm.thumbsupnum)){n.next=3;break}return e.$utils.msg("赞应输入整数"),n.abrupt("return");case 3:if(!e.ruleForm.crazilynum||e.$validate.isIntNumer(e.ruleForm.crazilynum)){n.next=6;break}return e.$utils.msg("踩应输入整数"),n.abrupt("return");case 6:if(!e.ruleForm.clicknum||e.$validate.isIntNumer(e.ruleForm.clicknum)){n.next=9;break}return e.$utils.msg("点击次数应输入整数"),n.abrupt("return");case 9:if(e.ruleForm.price){n.next=12;break}return e.$utils.msg("价格不能为空"),n.abrupt("return");case 12:if(!e.ruleForm.price||e.$validate.isNumber(e.ruleForm.price)){n.next=15;break}return e.$utils.msg("价格应输入数字"),n.abrupt("return");case 15:if(e.ruleForm.userid){n.next=18;break}return e.$utils.msg("用户id不能为空"),n.abrupt("return");case 18:if(!e.ruleForm.id){n.next=23;break}return n.next=21,e.$api.update("shangpinxinxi",e.ruleForm);case 21:n.next=25;break;case 23:return n.next=25,e.$api.add("shangpinxinxi",e.ruleForm);case 25:e.$utils.msgBack("提交成功");case 26:case"end":return n.stop()}}),n)})))()},optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var n=new Date,i=n.getFullYear(),r=n.getMonth()+1,t=n.getDate();return"start"===e?i-=60:"end"===e&&(i+=2),r=r>9?r:"0"+r,t=t>9?t:"0"+t,"".concat(i,"-").concat(r,"-").concat(t)},toggleTab:function(e){this.$refs[e].show()}}};n.default=c}).call(this,i("543d")["default"])},"7f0d":function(e,n,i){"use strict";i.d(n,"b",(function(){return t})),i.d(n,"c",(function(){return a})),i.d(n,"a",(function(){return r}));var r={wPicker:function(){return Promise.all([i.e("common/vendor"),i.e("components/w-picker/w-picker")]).then(i.bind(null,"e8b4"))}},t=function(){var e=this,n=e.$createElement;e._self._c},a=[]},"8dde":function(e,n,i){"use strict";i.r(n);var r=i("5f3f9"),t=i.n(r);for(var a in r)"default"!==a&&function(e){i.d(n,e,(function(){return r[e]}))}(a);n["default"]=t.a},"9a52":function(e,n,i){"use strict";var r=i("beee"),t=i.n(r);t.a},beee:function(e,n,i){}},[["01f9","common/runtime","common/vendor"]]]);