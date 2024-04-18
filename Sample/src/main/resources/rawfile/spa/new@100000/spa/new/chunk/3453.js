/*! For license information please see 3453.js.LICENSE.txt */
"use strict";(self.webpackJsonp=self.webpackJsonp||[]).push([[3453],{"6283":function(n,t,e){e.d(t,{"Z":function(){return x}});var a=e(3799),i=e(32461),r=e(16556),s=e(53202),o=e(28673),c=e(66306),l=e(98612),d=e(20874),u=e(955),f=e(53428),p=e(65169),h=function(n){(0,s.Z)(Index,n);var t=(0,o.Z)(Index);function Index(){var n;(0,a.Z)(this,Index);for(var e=arguments.length,i=new Array(e),s=0;s<e;s++)i[s]=arguments[s];return n=t.call.apply(t,[this].concat(i)),(0,c.Z)((0,r.Z)(n),"state",{}),(0,c.Z)((0,r.Z)(n),"stringify",(function(n){var t=new Map,e=JSON.stringify(n,(function(n,e){if(void 0===e)return"undefined";if("function"==typeof e)return"function";if("object"===(0,f.Z)(e)&&null!==e){if(t.has(e))return;t.set(e,e)}return e}));return t.clear(),e})),n}return(0,i.Z)(Index,[{"key":"render","value":function render(){var n=this.props,t=n.testApi,e=n.callbackRes;return(0,p.jsx)(u.View,{"className":"callback-content","children":(0,p.jsx)(u.View,{"className":"callback-res","id":"".concat(t,"-callback"),"children":this.stringify(e)})})}}]),Index}(l.Component),x=function(n){(0,s.Z)(Index,n);var t=(0,o.Z)(Index);function Index(){var n;(0,a.Z)(this,Index);for(var e=arguments.length,i=new Array(e),s=0;s<e;s++)i[s]=arguments[s];return n=t.call.apply(t,[this].concat(i)),(0,c.Z)((0,r.Z)(n),"state",{"inputData":[],"textareaControl":[],"hiddenNum":0}),(0,c.Z)((0,r.Z)(n),"changeData",(function(t,e){var a=n.state.inputData;try{a[e]=JSON.parse(t.detail.value)}catch(n){a[e]=t.detail.value}n.setState({"inputData":a})})),(0,c.Z)((0,r.Z)(n),"submitData",(function(n,t,e){null!=t.func&&("string"==typeof n?(0,d.CF)({"icon":"error","title":"请检查参数格式"}):null==n?t.func(e):t.func(e,n))})),(0,c.Z)((0,r.Z)(n),"minusHidden",(function(){var t=n.state.hiddenNum;t>0?n.setState({"hiddenNum":t-1}):(0,d.CF)({"title":"已全部显示"})})),(0,c.Z)((0,r.Z)(n),"addHidden",(function(){var t=n.state.hiddenNum;t<n.props.buttonList.length?n.setState({"hiddenNum":t+1}):(0,d.CF)({"title":"已全部隐藏"})})),(0,c.Z)((0,r.Z)(n),"hideTextarea",(function(t){var e=n.state.textareaControl;e[t]=!e[t],n.setState({"textareaControl":e})})),(0,c.Z)((0,r.Z)(n),"isAdvancedAPI",(function(n){try{return asAPIMap.get(n)}catch(n){return!1}})),n}return(0,i.Z)(Index,[{"key":"componentDidMount","value":function componentDidMount(){var n=this.props.buttonList,t=[],e=[];n.forEach((function(n){n.inputData?t.push(n.inputData):t.push(void 0),e.push(!0)})),this.setState({"inputData":t})}},{"key":"render","value":function render(){var n=this,t=this.props.buttonList,e=this.state,a=e.inputData,i=e.textareaControl,r=e.hiddenNum;return(0,p.jsxs)(u.View,{"className":"button-list","children":[(0,p.jsxs)(u.View,{"className":"hidden-control","children":[(0,p.jsx)(u.Text,{"children":"隐藏按钮"}),(0,p.jsxs)(u.View,{"className":"stepper","children":[(0,p.jsx)(u.View,{"className":"normal","onClick":this.minusHidden,"children":"-"}),(0,p.jsx)(u.View,{"className":"stepper-num","children":r}),(0,p.jsx)(u.View,{"className":"normal","onClick":this.addHidden,"children":"+"})]})]}),t.map((function(t,e){return(0,p.jsxs)(u.View,{"className":"api-page-btn-area ".concat(e<r?"api-page-btn-area-hidden":""),"children":[null!=a[e]?(0,p.jsxs)(u.View,{"className":"api-textarea-area","children":[(0,p.jsx)(u.Textarea,{"className":"api-input-area ".concat(i[e]?"api-input-area-hidden":""),"maxlength":-1,"id":"".concat(t.id,"-input"),"value":"string"==typeof a[e]?a[e]:JSON.stringify(a[e],null,2),"onInput":function onInput(t){n.changeData(t,e)}}),(0,p.jsx)(u.View,{"className":"textarea-control","onClick":function onClick(){n.hideTextarea(e)},"children":i[e]?"+":"-"})]}):"",(0,p.jsxs)(u.View,{"className":"api-page-btn ".concat(null==t.func?"api-page-btn-uncreate":""," ").concat(n.isAdvancedAPI(t.id)?"api-page-btn-advanced":""),"id":t.id,"onClick":function onClick(){n.submitData(a[e],t,e)},"children":[t.id,null!=t.callbackRes?(0,p.jsx)(h,{"testApi":t.id,"callbackRes":t.callbackRes}):""]})]},t.id)}))]})}}]),Index}(l.Component)},"33453":function(n,t,e){e.r(t),e.d(t,{"default":function(){return x}});var a=e(3799),i=e(32461),r=e(16556),s=e(53202),o=e(28673),c=e(66306),l=e(98612),d=e(37373),u=e(955),f=e(6283),p=e(52567),h=e(65169),x=function(n){(0,s.Z)(Index,n);var t=(0,o.Z)(Index);function Index(){var n;(0,a.Z)(this,Index);for(var e=arguments.length,i=new Array(e),s=0;s<e;s++)i[s]=arguments[s];return n=t.call.apply(t,[this].concat(i)),(0,c.Z)((0,r.Z)(n),"state",{"ad":{},"list":[{"id":"createRewardedVideoAd","func":null},{"id":"createInterstitialAd","inputData":{"adUnitId":""},"func":function func(t,e){p.n.consoleTest("Taro.createInterstitialAd");var a=(0,d.N)(e);p.n.consoleResult.call((0,r.Z)(n),a,t),n.setState({"ad":a}),a.onError((function(n){p.n.consoleNormal("InterstitialAd.onError",n)})),a.onLoad((function(n){p.n.consoleNormal("InterstitialAd.onLoad",n)})),a.onClose((function(){p.n.consoleNormal("InterstitialAd.onClose")}))}},{"id":"InterstitialAd.show","inputData":{"adUnitId":""},"func":function func(){p.n.consoleTest("InterstitialAd.show"),n.state.ad&&n.state.ad.show().then((function(){p.n.consoleNormal("InterstitialAd.show")}))}},{"id":"RewardedVideoAd","func":null}]}),n}return(0,i.Z)(Index,[{"key":"render","value":function render(){var n=this.state.list;return(0,h.jsx)(u.View,{"className":"api-page","children":(0,h.jsx)(f.Z,{"buttonList":n})})}}]),Index}(l.Component)},"55001":function(n,t,e){var a=e(98612),i=Symbol.for("react.element"),r=Symbol.for("react.fragment"),s=Object.prototype.hasOwnProperty,o=a.__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.ReactCurrentOwner,c={"key":!0,"ref":!0,"__self":!0,"__source":!0};function q(n,t,e){var a,r={},l=null,d=null;for(a in void 0!==e&&(l=""+e),void 0!==t.key&&(l=""+t.key),void 0!==t.ref&&(d=t.ref),t)s.call(t,a)&&!c.hasOwnProperty(a)&&(r[a]=t[a]);if(n&&n.defaultProps)for(a in t=n.defaultProps)void 0===r[a]&&(r[a]=t[a]);return{"$$typeof":i,"type":n,"key":l,"ref":d,"props":r,"_owner":o.current}}t.Fragment=r,t.jsx=q,t.jsxs=q},"65169":function(n,t,e){n.exports=e(55001)}}]);