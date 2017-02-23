/*
 *  Parallax-Scroll - v0.2.0
 *  jQuery plugin for background-attachment: scroll with friction, similar to the parallax scrolling effect on Spotify.
 *  http://parallax-scroll.aenism.com
 *
 *  Made by Aen Tan
 *  Under MIT License
 */
!function(a,b){"function"==typeof define&&define.amd?define(["jquery"],b):b(a.jQuery)}(this,function(a){"use strict";var b,c={friction:.5},d=a(window),e=0;return window.requestAnimationFrame=function(a){var b=(new Date).getTime(),c=Math.max(0,5-(b-e)),d=window.setTimeout(function(){a(b+c)},c);return e=b+c,d},b=function(b,e){return{init:function(){this.$background=a(b),this.settings=a.extend({},c,e),this._initStyles(),this._bindEvents()},_initStyles:function(){this.$background.css({"background-attachment":"scroll"})},_visibleInViewport:function(){var a=d.height(),b=this.$background.get(0).getBoundingClientRect();return b.top<a&&b.bottom>0||b.bottom<=a&&b.top>a},_bindEvents:function(){var a=this;d.on("load scroll resize",function(){a._requestTick()})},_requestTick:function(){var a=this;this.ticking||(this.ticking=!0,requestAnimationFrame(function(){a._updateBgPos()}))},_updateBgPos:function(){if(this._visibleInViewport()){var a=d.width(),b=d.height(),c=this.$background.data("width"),e=this.$background.data("height"),f=c/e,g=this.$background.width(),h=this.$background.height(),i=g/h,j=f>i,k=g/c,l=e*k,m=this.$background.offset().top,n=d.scrollTop(),o=n-m,p=b+l,q=o*(b/p),r=o/b,s=(b-h)/2;s=j?s*r:s;var t=j?2*this.settings.friction*i:this.settings.friction*i,u=j?"auto "+b+"px":a+"px auto",v=q*t-s;this.$background.css({"background-size":u,"background-position":"50% "+v+"px"})}this.ticking=!1}}},b.defaults=c,a.fn.parallaxScroll=function(a){return this.each(function(){new b(this,a).init()})},b});