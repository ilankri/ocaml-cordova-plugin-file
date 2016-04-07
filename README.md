# ocaml-cordova-plugin-file

* gen_js_api (master branch): [![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-file.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-file)

Binding to
[cordova-plugin-file](https://github.com/apache/cordova-plugin-file)

[Example
application](https://github.com/dannywillems/ocaml-cordova-plugin-file-example).

## What does cordova-plugin-file do ?

```
This plugin implements a File API allowing read/write access to files residing
on the device.
```

Source: [cordova-plugin-file](https://github.com/apache/cordova-plugin-file)

## Repository branches and tags

We are migrating bindings from
[js_of_ocaml](https://github.com/ocsigen/js_of_ocaml) (low level bindings) to
[gen_js_api](https://github.com/lexifi/gen_js_api) (high level bindings).

The gen_js_api binding allows to use *pure* ocaml types (you don't have to use
the ## syntax from js_of_ocaml or Js.string type but only # and string type).

The js_of_ocaml version is available in the branch
[*js_of_ocaml*](https://github.com/dannywillems/ocaml-cordova-plugin-file/tree/js_of_ocaml)
but we **recommend** to use the gen_js_api version which is the master branch.

## How to install and compile your project by using this plugin ?

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0+beta1
```

You can use opam by pinning the repository with
```Shell
opam pin add cordova-plugin-file https://github.com/dannywillems/ocaml-cordova-plugin-file.git
```

and to compile your project, use
```Shell
ocamlfind ocamlc -c -o [output_file] -package gen_js_api -package cordova-plugin-file [...] -linkpkg [other arguments]
```

Don't forget to install the cordova plugin file with
```Shell
cordova plugin add cordova-plugin-file
```

## How to use ?

See the official documentation
[cordova-plugin-file](https://github.com/apache/cordova-plugin-file)

## TODO

* Allow to use methods which are available on the device depending on the
  operating system.

## ! BE CAREFUL !

The device plugin creates a new object called *cordova.file*, but the object is
available when the *deviceready* event is handled.

We provide a function *Cordova_file.t* of type unit -> Cordova_file.file which does the binding when you call it.
So, use (with js_of_ocaml)

```OCaml
let on_device_ready =
  let a = Cordova_file.t () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```
