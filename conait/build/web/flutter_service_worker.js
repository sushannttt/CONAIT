'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "7879e46f40616370f5e51de8624998b5",
"assets/AssetManifest.bin.json": "280c5eebd81aa70efc3582c9c0901ecb",
"assets/AssetManifest.json": "38470252abef6c17e4b1e02228020915",
"assets/assets/images/background_pattern.svg": "b94d644b1af27f05eb187eed6691f876",
"assets/assets/images/bitmap.png": "340afc5c62ae65f11aa1894f67d952bd",
"assets/assets/images/black_andPurpGrad.jpeg": "b4f5d76d711f3124172e870329afb22d",
"assets/assets/images/blue_andblackgrad.jpeg": "15dc39d8a9204dd86d32d5a9035f93b5",
"assets/assets/images/chotu_pfp.jpeg": "8b46425e089d6911024ce1bd53c0ce58",
"assets/assets/images/circles.png": "e8cad8e7ea585d573b0c1412f1b044f5",
"assets/assets/images/circles_background.jpeg": "943bf7478dc7dc5e7c3c2319c02040f8",
"assets/assets/images/conait.svg": "306a8d155b78d83724b7a84326058811",
"assets/assets/images/coTree.png": "16870037a335d80e8b877673fa03629f",
"assets/assets/images/Cotree_1.png": "b5e37592053f8f2f2cc8e5ccd7aa0dc0",
"assets/assets/images/Cotree_10.png": "02cc1845294e6291d3bf2474c5565c3f",
"assets/assets/images/Cotree_11.png": "c4b528c163a214143755ec3d7d832950",
"assets/assets/images/Cotree_12.png": "2257ba17d1301ac868bc2a594578232f",
"assets/assets/images/Cotree_13.png": "f4a83eee7b54f01e4a328cc6d5b190a7",
"assets/assets/images/Cotree_14.png": "971a8957cc0c286e22d58524df04ff62",
"assets/assets/images/Cotree_2.png": "41e7aada570731c218d6cfad25f4314b",
"assets/assets/images/Cotree_3.png": "b411d9c10e0e9fc628eeaa6fcb057d72",
"assets/assets/images/Cotree_4.png": "b411d9c10e0e9fc628eeaa6fcb057d72",
"assets/assets/images/Cotree_5.png": "f5e4f478e3657f172ac450be8284fa60",
"assets/assets/images/Cotree_6.png": "f5e4f478e3657f172ac450be8284fa60",
"assets/assets/images/Cotree_7.png": "41bc64d340d8dc589a0e884deff67552",
"assets/assets/images/Cotree_8.png": "c5d54b21bd4c75568b418108c84654cf",
"assets/assets/images/Cotree_9.png": "c5d54b21bd4c75568b418108c84654cf",
"assets/assets/images/cotree_gradient.png": "309193af99e91286b42f80f22f65b8f8",
"assets/assets/images/cotree_hand.png": "8b71b9a1c50178124d139462bd680ec8",
"assets/assets/images/cotree_logo.png": "d51766141be8ef1578755014e92776e5",
"assets/assets/images/cotree_logo.svg": "b3c3de07f9cd1d196dc3070dad30e790",
"assets/assets/images/examEval.png": "5b123da658bc292892597cafff468c0e",
"assets/assets/images/exameval_1.png": "b91278a81a3929e73379b333a627df4f",
"assets/assets/images/exameval_2.png": "07d08fe7e765d0e430b1a073d7905bc5",
"assets/assets/images/exameval_3.png": "f6c53ba02c039c9b9ba90e90a9766889",
"assets/assets/images/exameval_4.png": "ad94d789714b7d771261c6ebd8106ee4",
"assets/assets/images/exameval_5.png": "218f0657e8f6b22bb6eec25ae9eca363",
"assets/assets/images/exameval_6.png": "83a658320d4574c51d33f6c5276cd745",
"assets/assets/images/exam_bg.jpg": "5fa3862a5aed3ed89534810fad06dae4",
"assets/assets/images/mayank_pfp.jpeg": "1559f3f3d7fb28240751a84fbaeea808",
"assets/assets/images/saif_pfp.jpg": "4d8bf545c2463b97c6bfde0fe257ad35",
"assets/assets/images/sushant_pfp.jpeg": "08aca65dd143c2db5e310e6c624dee65",
"assets/assets/screenshots/ss01.jpg": "a59b8d15cc72e467f9ad3ab755c7691c",
"assets/assets/screenshots/ss02.jpg": "e2078b81eb31df271aa85ea80e8d41b9",
"assets/assets/screenshots/ss03.jpg": "4bd7e62abdb43806b54296ec2849e1ab",
"assets/assets/screenshots/ss04.jpg": "b6d7b8b8af2f4b82112760ad8418d098",
"assets/assets/screenshots/ss05.jpg": "b05a006bcb4528ca0f72e180065ee13e",
"assets/assets/screenshots/ss06.jpg": "6bf6ee3db8dc529893c72718a27be30f",
"assets/assets/screenshots/ss07.jpg": "7dce2275f737fc4a4859fc0b9cb22bd2",
"assets/assets/screenshots/ss08.jpg": "836fbc335f68ad83fa8fd9bb3a06b257",
"assets/assets/screenshots/ss09.jpg": "024ba959e1d292899351c078e36931a5",
"assets/assets/screenshots/ss10.jpg": "0c987c6ea2add4e49bf78766d79e624b",
"assets/assets/screenshots/ss11.jpg": "3007fb519162b263b1040cd4a20feb9c",
"assets/assets/screenshots/ss12.jpg": "743fc0804686b6d663399ba186e90032",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "1e2cfd8ce9d369818eb7687bb7fde176",
"assets/NOTICES": "97a94d31444af6348a9dac82122c1515",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "0fe767ffd2c2cfbe834105209df8ea30",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "8644b60bcfe7dd30f0f5db73942db47e",
"/": "8644b60bcfe7dd30f0f5db73942db47e",
"main.dart.js": "894f844e8c835ec1d1b54c277ff79e6f",
"manifest.json": "fb62d58e0f08af54f344a4de6927ce3d",
"version.json": "5983156a528bcec8b022e5b8bff565aa"};
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
