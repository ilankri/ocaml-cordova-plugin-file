(* -------------------------------------------------------------------------- *)
(* !! Read the documentation to know which directory are available on your
 * plateform !!
 *)
val application_directory                  : unit -> string
[@@js.get "cordova.file.applicationDirectory"]
val application_storage_directory          : unit -> string
[@@js.get "cordova.file.applicationStorageDirectory"]
val data_directory                         : unit -> string
[@@js.get "cordova.file.dataDirectory"]
val cache_directory                        : unit -> string
[@@js.get "cordova.file.cacheDirectory"]
val external_application_storage_directory : unit -> string
[@@js.get "cordova.file.externalApplicationStorageDirectory"]
val external_data_directory                : unit -> string
[@@js.get "cordova.file.externalDataDirectory"]
val external_cache_directory               : unit -> string
[@@js.get "cordova.file.externalCacheDirectory"]
val external_root_directory                : unit -> string
[@@js.get "cordova.file.externalRootDirectory"]
val temp_directory                         : unit -> string
[@@js.get "cordova.file.tempDirectory"]
val synced_data_directory                  : unit -> string
[@@js.get "cordova.file.syncedDataDirectory"]
val documents_directory                    : unit -> string
[@@js.get "cordova.file.documentsDirectory"]
val shared_directory                       : unit -> string
[@@js.get "cordova.file.sharedDirectory"]
(* -------------------------------------------------------------------------- *)
