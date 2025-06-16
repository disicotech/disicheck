'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "74744934ffdcd0f5341a5eeb31af28a6",
"version.json": "008f43a652c644ab6a04aa5132dabbb9",
"index.html": "8f6eec0f451a9edf81e967280faeba35",
"/": "8f6eec0f451a9edf81e967280faeba35",
"main.dart.js": "cdef050a3e2af8adaef84eb7210c5748",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "2704101cb06ce66e2000356a312be25c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/app_launcher_icon.png": "4cfc48750577602d95d916cef17c561b",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "192ac43ddf6724a860d1816d97c098a6",
"assets/AssetManifest.json": "e90c36e83f413735d703d610678d18c8",
"assets/NOTICES": "8cf420eba0764b7cee7504e6c835f5e4",
"assets/FontManifest.json": "e34d215e4e87efbe7f36715697d61343",
"assets/AssetManifest.bin.json": "db323216ef0e302ea79501682e971db6",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "7fac12c2a72eecbc46f07ffa89dbec62",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "8fc40215a4b4ff6d40c3290edf5381ea",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "eafdfd1fe143602951db6ff91b4e5b4e",
"assets/packages/marketplace_check_internet_connection_library_vrjzhi/assets/audios/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/packages/marketplace_check_internet_connection_library_vrjzhi/assets/jsons/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/packages/marketplace_check_internet_connection_library_vrjzhi/assets/rive_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/packages/marketplace_check_internet_connection_library_vrjzhi/assets/images/app_launcher_icon.jpg": "c3ab791d79b3ebbe10c119e39139e7a2",
"assets/packages/marketplace_check_internet_connection_library_vrjzhi/assets/images/mm_app_logo.jpg": "c3ab791d79b3ebbe10c119e39139e7a2",
"assets/packages/marketplace_check_internet_connection_library_vrjzhi/assets/images/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/packages/marketplace_check_internet_connection_library_vrjzhi/assets/images/middnight_logo.png": "ec757c7f4f6d9f132e804eecae772591",
"assets/packages/marketplace_check_internet_connection_library_vrjzhi/assets/videos/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/packages/marketplace_check_internet_connection_library_vrjzhi/assets/pdfs/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/packages/marketplace_check_internet_connection_library_vrjzhi/assets/fonts/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "7fa5c572d30dc3f13a192012152960ad",
"assets/fonts/MaterialIcons-Regular.otf": "13faf88f2ddca0aad77562820f05aa15",
"assets/assets/audios/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/jsons/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/rive_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/DISICHECK_APP_LOGO.png": "4cfc48750577602d95d916cef17c561b",
"assets/assets/images/PersonajeMtto.jpg": "aa16a602ae45ea8febf88c1dd01556d3",
"assets/assets/images/pulpo-links.jpg": "af8d401b3f8b7be6a17c5a1346e91b7e",
"assets/assets/images/user-placeholder.png": "6c2ca0085f5e10d5de5a4bed954504c5",
"assets/assets/images/@4xff_badgeDesign_dark_small.png": "a99c41a58285c1bed86663ead0282ba9",
"assets/assets/images/Como_funciona_DISICHECK.png": "ec6feb7df60ac8617e6db1320f59c059",
"assets/assets/images/adaptive_foreground_icon.png": "68493dd0cbad425303e2fedc180876bf",
"assets/assets/images/placeholder-image.png": "8be295c16000b2ba6655541a67a8ccc5",
"assets/assets/images/app_launcher_icon.png": "4cfc48750577602d95d916cef17c561b",
"assets/assets/images/disicheck-onboarding-background.png": "e0a3e30844bb3f64c0c05b49b2c0f933",
"assets/assets/images/disicheck-user-placeholder-img.png": "6703b1ed954f4ad810eae80d37d00c05",
"assets/assets/images/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/adaptive_background_icon.png": "68493dd0cbad425303e2fedc180876bf",
"assets/assets/images/disicheck-logo.png": "183c74fa3d821e28baa08e2b18101efc",
"assets/assets/images/disicheck-upload-photographic-record.jpg": "74728af13ba3ed82c0ff804233d26b0d",
"assets/assets/images/disicheck-asset-default-image.jpg": "e4f9bd087e4d30ca285026de182a5bef",
"assets/assets/images/disicheck-admin-user-creation-placeholder.png": "abbe94804e529c1428d851b75033c848",
"assets/assets/videos/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/pdfs/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/Gilroy-UltraLightItalic.ttf": "5c3b028b0b0f7b4ace95ac644082400d",
"assets/assets/fonts/Gilroy-Medium.ttf": "c83281ae1ca703d0741a770ee7e7c091",
"assets/assets/fonts/Gilroy-LightItalic.ttf": "a0904c2ad11d35a1079be6d2749bf98a",
"assets/assets/fonts/Gilroy-ThinItalic.ttf": "6fe75d8801ab6a4aeb79f5627be2a655",
"assets/assets/fonts/Gilroy-BoldItalic.ttf": "920fb5d3a984a3906d0c681214ce0087",
"assets/assets/fonts/Gilroy-SemiBoldItalic.ttf": "e2389bf40e3693ec0257d576bce4ff65",
"assets/assets/fonts/Roboto-Regular.ttf": "8a36205bd9b83e03af0591a004bc97f4",
"assets/assets/fonts/Gilroy-RegularItalic.ttf": "b564aec808c412ff20b83a2d779122b5",
"assets/assets/fonts/Gilroy-BlackItalic.ttf": "fba7a1177258a7e2680202eff4036c54",
"assets/assets/fonts/Nunito-Regular.ttf": "0c890be2af0d241a2387ad2c4c16af2c",
"assets/assets/fonts/Gilroy-Regular.ttf": "31ff7c1a62a300dbbf9656b4ba14a0d5",
"assets/assets/fonts/Gilroy-UltraLight.ttf": "f5bd9c00f2cc7353bfc80031dd5d9394",
"assets/assets/fonts/Gilroy-Black.ttf": "b8a3b3a91be25a0030d694a34e152217",
"assets/assets/fonts/Nunito-SemiBold.ttf": "45db66b4d9dff8842f4a8e5e3deb2f94",
"assets/assets/fonts/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/Gilroy-ExtraBold.ttf": "b487bfc69e2a1cb0578fe2a910da8b2b",
"assets/assets/fonts/Gilroy-MediumItalic.ttf": "5d08cc9fffd565a2b9d9baae3846cb65",
"assets/assets/fonts/Gilroy-Light.ttf": "4b236c6cb4c59d66b80dde6f9c614ebd",
"assets/assets/fonts/Gilroy-Thin.ttf": "437d0d08a241c1d07517909f70c8ef11",
"assets/assets/fonts/Gilroy-ExtraBoldItalic.ttf": "9cf075de7808f747557e1845043070ab",
"assets/assets/fonts/Gilroy-SemiBold.ttf": "a5cf732b15078843b237bd58f3ed44cd",
"assets/assets/fonts/Gilroy-Bold.ttf": "b381c2abd2972024a6a7e3d882208d9b",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
