<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Calculator - Tools.com</title>
    <link href="/css/output.css" rel="stylesheet" />
    <style>
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

      .btn-animate:hover {
        @apply scale-105 shadow-lg transition;
      }
    </style>
  </head>
  <body
    class="bg-gradient-to-br from-purple-200 via-pink-100 to-indigo-200 min-h-screen flex flex-col items-center opacity-0 animate-page-enter"
  >
    <!-- Header -->
    <header
      class="rounded-b-xl text-center py-12 w-full bg-gradient-to-r from-purple-600 via-indigo-600 to-pink-600 shadow-lg text-white"
    >
      <h1 class="text-4xl md:text-5xl font-extrabold mb-2">Calculator</h1>
      <p class="text-gray-200 text-lg md:text-xl">
        Perform simple arithmetic operations
      </p>
    </header>

    <!-- Right Panel Calculator -->
    <main class="flex-1 flex justify-center items-center w-full px-4 py-12">
      <div
        class="bg-white/50 backdrop-blur-md shadow-2xl rounded-3xl p-8 max-w-sm w-full transform transition hover:scale-105"
      >
        <form action="Calculator" method="post" class="space-y-4">
          <!-- Number Inputs -->
          <input
            type="number"
            name="num1"
            placeholder="First number"
            required
            class="w-full mb-2 p-4 rounded-xl border border-gray-300 bg-white/70 text-gray-800 font-semibold focus:outline-none focus:ring-2 focus:ring-indigo-400"
          />
          <input
            type="number"
            name="num2"
            placeholder="Second number"
            required
            class="w-full mb-2 p-4 rounded-xl border border-gray-300 bg-white/70 text-gray-800 font-semibold focus:outline-none focus:ring-2 focus:ring-indigo-400"
          />

          <!-- Operation Select -->
          <select
            name="operator"
            required
            class="w-full p-4 rounded-xl border border-gray-300 bg-white/70 text-gray-800 font-semibold focus:outline-none focus:ring-2 focus:ring-indigo-400"
          >
            <option value="">Select Operation</option>
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="%">%</option>
            <option value="/">/</option>
          </select>
          <div class="bg-white rounded-2xl shadow-md p-4">
            <label class="block text-sm font-semibold text-gray-700 mb-2">
              Calculation Result
            </label>
            <input
              type="text"
              value="Result: ${result}"
              readonly
              class="w-full p-3 rounded-xl border border-gray-200 bg-gray-50 text-gray-700 font-medium cursor-not-allowed focus:outline-none focus:ring-2 focus:ring-blue-400"
            />
          </div>
          <!-- Submit Button -->
          <button
            type="submit"
            class="w-full bg-gradient-to-r from-indigo-600 to-purple-600 text-white p-4 rounded-xl font-semibold hover:brightness-110 transition-all"
          >
            Calculate
          </button>
        </form>

        <!-- Back Button -->
        <div class="mt-8 text-center">
          <a
            href="/"
            class="w-full page-link btn-animate inline-block px-6 py-2 rounded-full bg-gray-700 text-white font-medium hover:bg-gray-800 transition btn-animate inline-block px-6 py-3 rounded-full text-white font-medium"
          >
            Back to Home
          </a>
        </div>
      </div>
    </main>

    <!-- Footer -->
    <footer
      class="rounded-t-xl bg-gradient-to-r from-indigo-600 via-purple-600 to-pink-600 text-white w-full text-center py-6 bg-gray-900 text-gray-400 text-sm"
    >
      Tools.com | Made with MBM3730
    </footer>
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
