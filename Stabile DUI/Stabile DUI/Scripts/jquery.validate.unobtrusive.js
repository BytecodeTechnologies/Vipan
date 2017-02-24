﻿!function (a) { function e(a, b, c) { a.rules[b] = c, a.message && (a.messages[b] = a.message) } function f(a) { return a.replace(/^\s+|\s+$/g, "").split(/\s*,\s*/g) } function g(a) { return a.replace(/([!"#$%&'()*+,.\/:;<=>?@\[\\\]^`{|}~])/g, "\\$1") } function h(a) { return a.substr(0, a.lastIndexOf(".") + 1) } function i(a, b) { return 0 === a.indexOf("*.") && (a = a.replace("*.", b)), a } function j(b, c) { var d = a(this).find("[data-valmsg-for='" + g(c[0].name) + "']"), e = a.parseJSON(d.attr("data-valmsg-replace")) !== !1; d.removeClass("field-validation-valid").addClass("field-validation-error"), b.data("unobtrusiveContainer", d), e ? (d.empty(), b.removeClass("input-validation-error").appendTo(d)) : b.hide() } function k(b, c) { var d = a(this).find("[data-valmsg-summary=true]"), e = d.find("ul"); e && e.length && c.errorList.length && (e.empty(), d.addClass("validation-summary-errors").removeClass("validation-summary-valid"), a.each(c.errorList, function () { a("<li />").html(this.message).appendTo(e) })) } function l(b) { var c = b.data("unobtrusiveContainer"), d = a.parseJSON(c.attr("data-valmsg-replace")); c && (c.addClass("field-validation-valid").removeClass("field-validation-error"), b.removeData("unobtrusiveContainer"), d && c.empty()) } function m(b) { var c = a(this); c.data("validator").resetForm(), c.find(".validation-summary-errors").addClass("validation-summary-valid").removeClass("validation-summary-errors"), c.find(".field-validation-error").addClass("field-validation-valid").removeClass("field-validation-error").removeData("unobtrusiveContainer").find(">*").removeData("unobtrusiveContainer") } function n(b) { var c = a(b), e = c.data(d), f = a.proxy(m, b); return e || (e = { options: { errorClass: "input-validation-error", errorElement: "span", errorPlacement: a.proxy(j, b), invalidHandler: a.proxy(k, b), messages: {}, rules: {}, success: a.proxy(l, b) }, attachValidation: function () { c.unbind("reset." + d, f).bind("reset." + d, f).validate(this.options) }, validate: function () { return c.validate(), c.valid() } }, c.data(d, e)), e } var c, b = a.validator, d = "unobtrusiveValidation"; b.unobtrusive = { adapters: [], parseElement: function (b, c) { var f, g, h, d = a(b), e = d.parents("form")[0]; e && (f = n(e), f.options.rules[b.name] = g = {}, f.options.messages[b.name] = h = {}, a.each(this.adapters, function () { var c = "data-val-" + this.name, f = d.attr(c), i = {}; void 0 !== f && (c += "-", a.each(this.params, function () { i[this] = d.attr(c + this) }), this.adapt({ element: b, form: e, message: f, params: i, rules: g, messages: h })) }), a.extend(g, { __dummy__: !0 }), c || f.attachValidation()) }, parse: function (c) { var d = a(c).parents("form").andSelf().add(a(c).find("form")).filter("form"); a(c).find(":input[data-val=true]").each(function () { b.unobtrusive.parseElement(this, !0) }), d.each(function () { var a = n(this); a && a.attachValidation() }) } }, c = b.unobtrusive.adapters, c.add = function (a, b, c) { return c || (c = b, b = []), this.push({ name: a, params: b, adapt: c }), this }, c.addBool = function (a, b) { return this.add(a, function (c) { e(c, b || a, !0) }) }, c.addMinMax = function (a, b, c, d, f, g) { return this.add(a, [f || "min", g || "max"], function (a) { var f = a.params.min, g = a.params.max; f && g ? e(a, d, [f, g]) : f ? e(a, b, f) : g && e(a, c, g) }) }, c.addSingleVal = function (a, b, c) { return this.add(a, [b || "val"], function (d) { e(d, c || a, d.params[b]) }) }, b.addMethod("__dummy__", function (a, b, c) { return !0 }), b.addMethod("regex", function (a, b, c) { var d; return !!this.optional(b) || (d = new RegExp(c).exec(a), d && 0 === d.index && d[0].length === a.length) }), b.addMethod("nonalphamin", function (a, b, c) { var d; return c && (d = a.match(/\W/g), d = d && d.length >= c), d }), c.addSingleVal("accept", "exts").addSingleVal("regex", "pattern"), c.addBool("creditcard").addBool("date").addBool("digits").addBool("email").addBool("number").addBool("url"), c.addMinMax("length", "minlength", "maxlength", "rangelength").addMinMax("range", "min", "max", "range"), c.add("equalto", ["other"], function (b) { var c = h(b.element.name), d = b.params.other, f = i(d, c), j = a(b.form).find(":input[name='" + g(f) + "']")[0]; e(b, "equalTo", j) }), c.add("required", function (a) { "INPUT" === a.element.tagName.toUpperCase() && "CHECKBOX" === a.element.type.toUpperCase() || e(a, "required", !0) }), c.add("remote", ["url", "type", "additionalfields"], function (b) { var c = { url: b.params.url, type: b.params.type || "GET", data: {} }, d = h(b.element.name); a.each(f(b.params.additionalfields || b.element.name), function (e, f) { var h = i(f, d); c.data[h] = function () { return a(b.form).find(":input[name='" + g(h) + "']").val() } }), e(b, "remote", c) }), c.add("password", ["min", "nonalphamin", "regex"], function (a) { a.params.min && e(a, "minlength", a.params.min), a.params.nonalphamin && e(a, "nonalphamin", a.params.nonalphamin), a.params.regex && e(a, "regex", a.params.regex) }), a(function () { b.unobtrusive.parse(document) }) }(jQuery);