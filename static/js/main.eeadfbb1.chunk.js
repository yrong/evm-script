(this["webpackJsonpevm-substrate-address-converter"]=this["webpackJsonpevm-substrate-address-converter"]||[]).push([[0],{51:function(e,t,n){},52:function(e,t,n){},53:function(e,t,n){},65:function(e,t,n){"use strict";n.r(t);var a=n(3),c=n.n(a),r=n(29),s=n.n(r),o=(n(51),n(0)),i=n.p+"static/media/logo.103b5fa1.svg",l=(n(52),n(53),n(70)),j=n(72),u=n(75),b=n(74),d=n(71),h=n(1);var p=function(){var e=Object(a.useState)("SS58"),t=Object(o.a)(e,2),n=t[0],c=t[1],r=Object(a.useState)(""),s=Object(o.a)(r,2),p=s[0],O=s[1],m=Object(a.useState)(42),x=Object(o.a)(m,2),v=x[0],g=x[1],f=Object(a.useCallback)((function(){return p&&"SS58"===n&&l.a(p,v)[0]?d.a(j.a(p,!0)):"invalid"}),[p,n,v]),S=Object(a.useCallback)((function(){return p&&"H160"===n&&u.a(p)?b.a(p,v):"invalid"}),[p,v,n]),k=Object(a.useMemo)((function(){return"H160"===n?S():f()}),[S,f,n]);return Object(h.jsx)("div",{className:"App",children:Object(h.jsxs)("header",{className:"App-header",children:[Object(h.jsx)("img",{src:i,className:"App-logo",alt:"logo"}),Object(h.jsxs)("p",{children:["Current address scheme: ",n]}),Object(h.jsxs)("label",{className:"switch",children:[Object(h.jsx)("input",{type:"checkbox",onChange:function(){c("H160"===n?"SS58":"H160")}}),Object(h.jsx)("span",{className:"slider round"})]}),Object(h.jsx)("p",{children:"Change address prefix"}),Object(h.jsx)("input",{type:"text",value:v,onChange:function(e){return g(Number.parseInt(e.target.value))}}),Object(h.jsx)("p",{children:"Input address"}),Object(h.jsx)("input",{type:"text",value:p,onChange:function(e){return O(e.target.value)}}),Object(h.jsx)("p",{children:p}),Object(h.jsx)("p",{children:k}),Object(h.jsx)("a",{className:"App-link",href:"https://reactjs.org",target:"_blank",rel:"noopener noreferrer",children:"Learn React"})]})})};Boolean("localhost"===window.location.hostname||"[::1]"===window.location.hostname||window.location.hostname.match(/^127(?:\.(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}$/));s.a.render(Object(h.jsx)(c.a.StrictMode,{children:Object(h.jsx)(p,{})}),document.getElementById("root")),"serviceWorker"in navigator&&navigator.serviceWorker.ready.then((function(e){e.unregister()})).catch((function(e){console.error(e.message)}))}},[[65,1,2]]]);
//# sourceMappingURL=main.eeadfbb1.chunk.js.map