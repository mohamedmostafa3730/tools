<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Unit Converter - Tools.com</title>
    <link href="/css/output.css" rel="stylesheet" />
  </head>
  <body
    class="bg-gradient-to-br from-purple-200 via-pink-100 to-indigo-200 min-h-screen flex flex-col opacity-0 animate-page-enter"
  >
    <!-- Header -->
    <header
      class="rounded-b-xl bg-gradient-to-r from-indigo-600 via-purple-600 to-pink-600 text-white text-center py-12 shadow-xl"
    >
      <h1 class="text-4xl font-extrabold tracking-tight mb-2">Unit Converter</h1>
      <p class="text-gray-200 text-lg">
        Convert length, weight, temperature, and currency.
      </p>
    </header>

    <!-- Converter Section -->
    <main class="flex-1 container mx-auto px-6 py-14">
      <div
        class="bg-white/90 backdrop-blur rounded-3xl shadow-lg p-10 max-w-2xl mx-auto text-center border border-gray-100 transform transition duration-500 hover:shadow-2xl"
      >
        <h2 class="text-2xl font-semibold text-gray-800 mb-6">
          Try Conversion
        </h2>

        <!-- Converter Form -->
        <form action="#" method="post" class="space-y-6">
          <!-- Conversion Type -->
          <div>
            <label class="block text-gray-700 font-medium mb-2"
              >Conversion Type</label
            >
            <select
              class="w-full p-3 rounded-xl border border-gray-300 focus:ring-2 focus:ring-indigo-400 focus:outline-none"
            >
              <option>Length</option>
              <option>Weight</option>
              <option>Temperature</option>
              <option>Currency</option>
            </select>
          </div>

          <!-- From Input -->
          <div>
            <label class="block text-gray-700 font-medium mb-2"
              >Convert From</label
            >
            <input
              type="number"
              placeholder="Enter value"
              class="w-full p-3 rounded-xl border border-gray-300 focus:ring-2 focus:ring-indigo-400 focus:outline-none"
            />
          </div>

          <!-- To Input -->
          <div>
            <label class="block text-gray-700 font-medium mb-2"
              >Convert To</label
            >
            <input
              type="text"
              placeholder="Result"
              readonly
              class="w-full p-3 rounded-xl border border-gray-300 bg-gray-100 text-gray-600 cursor-not-allowed"
            />
          </div>

          <!-- Convert Button -->
          <button
            type="submit"
            class="btn-animate px-6 py-3 rounded-xl bg-gradient-to-r from-indigo-500 to-purple-500 text-white font-medium shadow-md transition"
          >
            Convert
          </button>
        </form>

        <!-- Back Button -->
        <div class="mt-10">
          <a
            href="/"
            class="page-link btn-animate inline-block px-6 py-2 rounded-full bg-gray-700 text-white font-medium hover:bg-gray-800 transition"
          >
          Back to Home
          </a>
        </div>
      </div>
    </main>

    <!-- Footer -->
    <footer class="rounded-t-xl bg-gradient-to-r from-indigo-600 via-purple-600 to-pink-600 text-white text-center py-6 text-sm">
        Tools.com | Made with MBM3730
    </footer>

    <!-- Animations -->
    <style>
      @keyframes fade-in {
        from {
          opacity: 0;
          transform: translateY(20px);
        }
        to {
          opacity: 1;
          transform: translateY(0);
        }
      }
      @keyframes fade-out {
        from {
          opacity: 1;
          transform: translateY(0);
        }
        to {
          opacity: 0;
          transform: translateY(20px);
        }
      }
      @keyframes pulse-glow {
        0%,
        100% {
          transform: scale(1);
          box-shadow: 0 0 0 rgba(255, 255, 255, 0);
        }
        50% {
          transform: scale(1.05);
          box-shadow: 0 0 20px rgba(255, 255, 255, 0.6);
        }
      }
      @keyframes page-enter {
        from {
          opacity: 0;
          transform: translateY(20px);
        }
        to {
          opacity: 1;
          transform: translateY(0);
        }
      }
      .animate-page-enter {
        animation: page-enter 0.8s ease-out forwards;
      }
      .animate-page-exit {
        animation: fade-out 0.5s ease-in forwards;
      }
      .btn-animate:hover {
        animation: pulse-glow 1s infinite;
      }
    </style>
  </body>
</html>
