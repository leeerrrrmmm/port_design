'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "0d30c4f8b4e663cee97ded66e423eeee",
"version.json": "02f759444879e275e3a7231f83aaf192",
"index.html": "ef4603091031fb3efb3917e210ffb478",
"/": "ef4603091031fb3efb3917e210ffb478",
"main.dart.js": "93bcb0314e15417d0e7d8194551e7654",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"icons/favicon.ico": "9aa3aa9f87b7aa70650415c291833614",
"icons/apple-touch-icon.png": "c86f3207788aba10f463fb53d6d46587",
"icons/icon-192.png": "b8a1f7631f36d238bc1b0c1ad7774698",
"icons/icon-192-maskable.png": "ce6035e20620ef6c2fb912d667b467e4",
"icons/icon-512-maskable.png": "c3b4d05245f537bb1b2077ac2fc32448",
"icons/icon-512.png": "6138569db6ebafb4b127fa117d8de975",
"manifest.json": "c5e87ae2976113efe4b08375fd50aeb0",
"assets/NOTICES": "2703be3eb84ebcfb35eadf88afe84dda",
"assets/FontManifest.json": "5feb7dbb01d82469d30d232cd38de2cc",
"assets/AssetManifest.bin.json": "28f90ad2e107e484dcaa3455ed8b77f0",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"assets/AssetManifest.bin": "b22c88e5ed8723ac6acfae25364d87e8",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/assets/images/tg.png": "8433bae44677b9b4aea986890847541c",
"assets/assets/images/check.png": "0b10b983bda05c915be9f6763223672e",
"assets/assets/images/procreateFrame.png": "bb396e7c6bb5681fe629190e64c1f510",
"assets/assets/images/book.png": "dc439d8e66d6631190d05d7a7a09e477",
"assets/assets/images/blenderFrame.png": "130e7e06161d0f10debc871051f8d765",
"assets/assets/images/sentMessage.png": "068ab0544038cb62045c8b00bc1b5584",
"assets/assets/images/clipFrame.png": "5f2f0d51f520b06689e737e0b943fc6e",
"assets/assets/images/figmaFrame.png": "93588ceafe8ab399c0a6f5957fae1443",
"assets/assets/images/photoshopFrame.png": "9fb75a66842917794cf4b81dd769b911",
"assets/assets/images/sayhello.png": "09bc039ed4363878747ace6212fbd733",
"assets/assets/images/scratch.png": "ec303b00dc242106db14d895fcf89327",
"assets/assets/images/gmail.png": "e245e7cad2cd695927178fcacb0cb099",
"assets/assets/images/aboutFrame.png": "280f2a9eb5d7f733d95b6e77867b685d",
"assets/assets/images/contactMe.png": "5abe3a87b887415b4a9278287386c791",
"assets/assets/images/exir.png": "1c4cefcc38296db8bc41b87c0c10b794",
"assets/assets/images/star.png": "df616da3ea7b534469c16fd277a08822",
"assets/assets/images/text.png": "b15bef7724cf33a3973da323b8a20bb7",
"assets/assets/images/inst.png": "d31d1356121c188d7025a2e03b783236",
"assets/assets/gifs/back.gif": "7e406c3ea867f63b77ebfd5b9c10a188",
"assets/assets/fonts/advent/AdventPro-Bold.ttf": "5594ed8c7a13031e1a71d062863717b9",
"assets/assets/fonts/advent/AdventPro-Medium.ttf": "197b6e1f3624a1736e8d647542b6e873",
"assets/assets/fonts/advent/AdventPro-Regular.ttf": "7348346dd701d030c96fe8fff9450d30",
"assets/assets/fonts/advent/AdventPro-Light.ttf": "86c50a5df81eab4b0dc4bc85cf2ce3b7",
"assets/assets/fonts/kanit/Kanit-Regular.ttf": "4e90956ae64683872e50efaffa7f354f",
"assets/assets/fonts/kanit/Kanit-Bold.ttf": "e397bc144284776cd0669e9342e5a531",
"assets/assets/fonts/kanit/Kanit-Light.ttf": "bc48af1340b72978ed1945a639f286da",
"assets/assets/fonts/kanit/Kanit-Medium.ttf": "da9eae892a8a3763f7fdbe859a4dd895",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01"};
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
