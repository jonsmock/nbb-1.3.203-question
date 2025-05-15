Error running scripts outside of the 'project' directory after upgrading to
nbb@1.3.203. Tested on node v20.19.0, v22.15.0, and v24.0.2.

```
# run on 1.3.202 and see expected output
cd inside && npm install
./run.sh

# upgrade to 1.3.203 to see error
npm install nbb@1.3.203
./run.sh
```

Expected output:

```
nested
inside
outside

> nbb
> nbb nested/check.cljs

nested

> nbb
> nbb check.cljs

inside

> nbb
> nbb ../check.cljs

outside
```

Error when running the 'outside' check.cljs on 1.3.203:

```
----- Error --------------------------------------
Type:     TypeError
Message:  (intermediate value)(intermediate value)(intermediate value).then is not a function
file:///home/jsmock/repos/question/inside/node_modules/nbb/lib/nbb_main.js:13
return k.v?k.v():k.call(null)}):null).then(function(k){$APP.l($APP.l(d)?null!=k:d)&&$APP.cy.l($APP.B([k]));return k}).catch(function(k){$APP.Ofa(k,b);$APP.l($APP.dy.g(b))&&console.error(k);throw Error($APP.im(k));})})):console.error("Usage: nbb \x3cscript\x3e or nbb -e \x3cexpr\x3e.")})();
                                                                                                                                                                                                   ^

Error: (intermediate value)(intermediate value)(intermediate value).then is not a function
    at file:///home/jsmock/repos/question/inside/node_modules/nbb/lib/nbb_main.js:13:196
```
