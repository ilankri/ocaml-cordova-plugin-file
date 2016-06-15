(* -------------------------------------------------------------------------- *)
(* !! Read the documentation to know which directory are available on your
 * plateform !!
 *)
val application_directory                  : string
[@@js.global "cordova.file.applicationDirectory"]
val application_storage_directory          : string
[@@js.global "cordova.file.applicationStorageDirectory"]
val data_directory                         : string
[@@js.global "cordova.file.dataDirectory"]
val cache_directory                        : string
[@@js.global "cordova.file.cacheDirectory"]
val external_application_storage_directory : string
[@@js.global "cordova.file.externalApplicationStorageDirectory"]
val external_data_directory                : string
[@@js.global "cordova.file.externalDataDirectory"]
val external_cache_directory               : string
[@@js.global "cordova.file.externalCacheDirectory"]
val external_root_directory                : string
[@@js.global "cordova.file.externalRootDirectory"]
val temp_directory                         : string
[@@js.global "cordova.file.tempDirectory"]
val synced_data_directory                  : string
[@@js.global "cordova.file.syncedDataDirectory"]
val documents_directory                    : string
[@@js.global "cordova.file.documentsDirectory"]
val shared_directory                       : string
[@@js.global "cordova.file.sharedDirectory"]
(* -------------------------------------------------------------------------- *)
