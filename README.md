# ocaml-cordova-plugin-file

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

## How to use ?

See the official documentation
[cordova-plugin-file](https://github.com/apache/cordova-plugin-file)

## TODO

* Allow to use methods which are available on the device depending on the
  operating system.

## ! BE CAREFUL !

The device plugin creates a new object called *cordova.file*, but the object is
available when the *deviceready* event is handled.

We don't provide a *cordova.file* variable in this plugin (as said in the official
documentation on js_of_ocaml). If we did, *cordova.file* will be set to **undefined**
because the *cordova.file* object doesn't exist when we create the variable.

Instead, we provide a function *FileCordova.file* of type unit -> FileCordova.file
Js.t which does the binding when you call it.
So, use

```OCaml
let on_device_ready _ =
  let a = FileCordova.file () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```
