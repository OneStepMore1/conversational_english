'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "f2abb920def7eaffda01b1e9d61fc7c9",
"version.json": "5abeaa35a41b0afa87a6edbe5debd2d8",
"index.html": "86a9528132c55aec41746af4e2038bcb",
"/": "86a9528132c55aec41746af4e2038bcb",
"main.dart.js": "bae9c2e65cf073e709647c04c09f0674",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "2852fd8e1b31c341a2bc1379a1c58a40",
".git/config": "acbadea09db852a047e77413099541a6",
".git/objects/92/6853ffcfd4610c1b1e36586b910de1b4ffd460": "21e6a6c78e4e5e921655f7f0d8cf1325",
".git/objects/0c/86ad1bb92d3174a6be65ca30d05436f59fa7a6": "198a3e26cf5b34420d4c60415e0a992e",
".git/objects/57/7946daf6467a3f0a883583abfb8f1e57c86b54": "7a2beaf557655dfe4d49f90a155f8001",
".git/objects/35/96d08a5b8c249a9ff1eb36682aee2a23e61bac": "ecdf16b6e236ddf82afbc5360f5ce6bb",
".git/objects/3c/09499ceabd35d1b2acf618b432de2296c5120e": "57d1482180ad481a6d4b682e3b0a47e9",
".git/objects/51/4f0381ab6221c5070486f56cf5bd14337b8d08": "3aadb08362375b7368663dc3cf4e68c6",
".git/objects/93/e648950350c7702077fc05188c9850303b2b89": "a1bb09ba27c2f7001adf8f06c802d610",
".git/objects/34/2c2dc17e1c19a1b36ef9cd7a73b1b31957740f": "b40de2a2b71ccfbd17a46c01419ba1cf",
".git/objects/5f/bf1f5ee49ba64ffa8e24e19c0231e22add1631": "c507d69554096e8cf8f581a9e3e2421e",
".git/objects/b5/b5d31f3d0c4520efef275b7a931c9e66b56fa7": "1c74f1398200eb63e1b83615c352fec8",
".git/objects/d9/3952e90f26e65356f31c60fc394efb26313167": "819a1bee2d98b54140582e489dcbb8ba",
".git/objects/d7/7cfefdbe249b8bf90ce8244ed8fc1732fe8f73": "1a4ee0c85a695a5f8ce1f75dac7efc0c",
".git/objects/a5/de584f4d25ef8aace1c5a0c190c3b31639895b": "5bea32f46d8e9e33e1e2bbb5c1523ffa",
".git/objects/a5/a4d2eef2a0095cf8895fb5455440cad3451335": "ffc8f97a2461f96563ae0d7ebaf01dea",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "5a9f3522bf38ba5dd54f15a0f75cb0d7",
".git/objects/d6/e0d1fc4f92af8270f69ea5bc9e722d37ed0492": "f77ef240b214a9d314b9c72834e908d5",
".git/objects/f4/20038dcdc95997821a2bda3e299f77a637373a": "fc1422a223b164bf9544edda9176f791",
".git/objects/f3/3d8ceab8543ba282fe18a2a176a0149015faa2": "f8746216199b6cc3db6c8d7c1b7b44e1",
".git/objects/f3/709a83aedf1f03d6e04459831b12355a9b9ef1": "28153710279c4ac512d78eab4ff360c9",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "01d8a507be49f15714be4d17b6947e52",
".git/objects/c0/38ed4af674dc49d096a9bb3bcf1e5f034d22b3": "7c239c216e4ea77975c239c3354c1631",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "aa30b45014e5ab878c26ecce9ea89743",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "fb2ee964a7fc17b8cba79171cb799fa3",
".git/objects/4b/08b36f370dbf25bd933f355506439ff77a871a": "129345223dc48223813f856f0ddb33d6",
".git/objects/pack/pack-b12bc07db0ddcbf04582ac784a99013585a67053.idx": "b45c6335ce055566aee75c0084b11573",
".git/objects/pack/pack-b12bc07db0ddcbf04582ac784a99013585a67053.pack": "b6f6394b89f548b0788348156c0e40ea",
".git/objects/16/4399cf663455631bbc894408a223ee170225bb": "8bb0607c79b77d363e9be5361e28404c",
".git/objects/89/6622008c522fa89253a8853922c0a10b8dde0c": "d6d2f0c3fb02e0e6b1139d22e5293015",
".git/objects/80/c4b92b6377169edddf92b435e1cef1778af31c": "fcd3eae3f8a7f5ee756a486bcb17b4a0",
".git/objects/8f/c8be62f202c40e7d3e2e16242fb065cfc4e1a7": "a37fe3b0c3394a335dd57a1b37db0d6b",
".git/objects/8f/700d0aa59d261044c5655f4ff136710cd45212": "9e63a925a171df40176850cc9369edf2",
".git/objects/8a/51a9b155d31c44b148d7e287fc2872e0cafd42": "0e7fbd1f8845cbeb2cdbf944a84ebaee",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "b25b26893b8f92a4f583677ba27f0a7f",
".git/objects/8a/498a4e3e5ae5aa69be063569c5e7f564899f33": "d72c51eff7b6e93ecd0bd6468b8a7d56",
".git/objects/86/4bb7b9e42a9be4e0de2462b7b8d136014a0c2b": "eeb42bae71665670535c4ab34e36cd7d",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e35fdc55764d9ed14315f6ff50093ab3",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "9524d053d0586a5f9416552b0602a196",
".git/objects/38/383b26e2c9dc470b9a4ce555778ed778b4df28": "3079b1333dc642b1791c7da39ea3add7",
".git/objects/6e/6027ed41be51648b3024ca7c9f80e08db5269e": "ad779ec631e46c1a658daeb7eb3e2fef",
".git/objects/91/4a40ccb508c126fa995820d01ea15c69bb95f7": "bff9d14adbb36657694ef0fc6d5e6f7f",
".git/objects/65/40dab43ca2329687a47aef4345a8235efd8117": "0969acdb29dcc605fb068285b5dc7d77",
".git/objects/98/001f8429113eeb6b474640d286fcdac3e6d09a": "cc2f59f9a1870d89b90ed5cdb59de116",
".git/objects/37/055d265b5277a62ad941ae39a0f51019208f8c": "f8eb7d5a0eb4c3ba4ff756869076d69e",
".git/objects/06/732fb8d81123899f8496b4d3455b1d02874a76": "44c309c2085c12a401fbdf4c46297142",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "9dbf5b01e391c548c8343be8d1d4b04e",
".git/objects/ba/0a7e78ef3fdb0a9cdb938fa447451fc3a0edd4": "d692729ab1f30a655d0d5b9b92bfe0c6",
".git/objects/a7/488b5d051d2182a610c77b5e902a73e6f3a76a": "a1ac5becd20371f5d1ce7c44ebd7679a",
".git/objects/b7/da216c89009ceb5fa7f1b4ccb9e5ea584fa5b6": "7c7067f29dcfe0371ba66addfc05f0cc",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "b0c549c0aed479932cf26d094f76630e",
".git/objects/a8/8c9340e408fca6e68e2d6cd8363dccc2bd8642": "936bdc921e2d2af84e1b88a53c8fc956",
".git/objects/de/6ee518882f28202a1b22d0bb24b6636a632772": "6ebc82c286a85470a19f79b43db3d06c",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "9de9f2c6fa0aea6ee34b79162e9fc361",
".git/objects/ef/b875788e4094f6091d9caa43e35c77640aaf21": "06319d1126433915a2b82321cb327d7f",
".git/objects/e6/cc1238dbc0b7ccf7f9688c5ed49177fcfbf8c9": "31658494cc208ad3162a6554c261986b",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "c3694958e54483a81b3e32ab9f84ece2",
".git/objects/2c/d02d76c6043204f001f7d50ed00bd043ec4e9e": "aa4f80039ec33cbe126e934b66bf1a23",
".git/objects/1d/468b85698a60041b450286f31b3264b3bbd6f7": "cceba5641e940f5b7a4d3593f5493386",
".git/objects/40/1184f2840fcfb39ffde5f2f82fe5957c37d6fa": "3ac7af462afd2c09154fc9d4fe3ca9ec",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "868246aa9da8176c175a24c5002e5a19",
".git/logs/refs/heads/gh-pages": "868246aa9da8176c175a24c5002e5a19",
".git/logs/refs/remotes/origin/gh-pages": "75af3bd6e23d82aef28ea05dbb87aeb6",
".git/logs/refs/remotes/origin/main": "5cd22b8c792d9e3268ef78162a1c5aa1",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/gh-pages": "1524bbe3ebb366de76240b5eb44c581a",
".git/refs/remotes/origin/gh-pages": "1524bbe3ebb366de76240b5eb44c581a",
".git/refs/remotes/origin/main": "65e8a1eb025880322da87c618f5b8c0e",
".git/index": "822da7ab2dab763702be84a90a4327ff",
".git/COMMIT_EDITMSG": "b92ad145cd8517dfbb1b56edb6c9104a",
".git/FETCH_HEAD": "47d980df5b4dfe0c642232c36a4d801e",
"assets/AssetManifest.json": "58f1a473d7b09580a92147b027c9c237",
"assets/NOTICES": "33cfda86c824fc1eed72dbf2ac3659e6",
"assets/FontManifest.json": "bbfd4df72baa8260637c7154d375e044",
"assets/AssetManifest.bin.json": "aee1c84d91ee45d137bf5644f6b6ceb4",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "855644da6c9b14ba4e4ca395391d8305",
"assets/fonts/MaterialIcons-Regular.otf": "3c064af9d762dd378728209e48ec7f85",
"assets/assets/images/teacher2.jpg": "732700b7267d0f61f708a20f5b37529c",
"assets/assets/images/teacher3.jpg": "4e031d01b37e7ccb596e5f7a702a55ba",
"assets/assets/images/teacher1.jpg": "0508e37844e2ca12a7a5b1d65ee9f9a8",
"assets/assets/images/group.png": "cc124821b1bb9bd43f368386d3aa870b",
"assets/assets/images/group_bg.png": "d3e585089695ccc5449b632a4b15b49a",
"assets/assets/logo/with_headset.svg": "e9b9b701a2ec7f5ca549d15ee8b4b07c",
"assets/assets/fonts/Salsa-Regular.ttf": "14371573c900b1bac1eeee4740fa4334",
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
