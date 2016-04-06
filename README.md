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

## How to use ?

See the official documentation
[cordova-plugin-file](https://github.com/apache/cordova-plugin-file)

## TODO

* Allow to use methods which are available on the device depending on the
  operating system.

## ! BE CAREFUL !

The device plugin creates a new object called *cordova.file*, but the object is
available when the *deviceready* event is handled.

We provide a function *File_cordova.t* of type unit -> File_cordova.file which does the binding when you call it.
So, use (with js_of_ocaml)

```OCaml
let on_device_ready =
  let a = File_cordova.t () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```
