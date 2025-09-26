<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Tools.com - Home</title>
    <link href="/css/output.css" rel="stylesheet" />
  </head>
  <body
    class="bg-gradient-to-br from-purple-200 via-pink-100 to-indigo-200 min-h-screen flex flex-col"
  >
    <!-- Header -->
    <header
      class="rounded-b-xl bg-gradient-to-r from-indigo-600 via-purple-600 to-pink-600 text-white text-center py-12 shadow-xl animate-fade-in"
    >
      <h1 class="text-5xl font-extrabold tracking-tight mb-3">Tools</h1>
      <p class="text-gray-200 text-lg">Multi-purpose utility tools web app</p>
    </header>

    <!-- Cards Section -->
    <main class="flex-1 container mx-auto px-6 py-14">
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-10">
        <!-- Card Template -->
        <div
          class="bg-white/90 backdrop-blur rounded-3xl shadow-lg p-8 text-center border border-gray-100 transform transition duration-500 hover:-translate-y-3 hover:scale-105 hover:shadow-2xl hover:bg-white animate-fade-up"
        >
          <h2 class="text-2xl font-semibold text-gray-800 mb-3">
            Unit Converter
          </h2>
          <p class="text-gray-600 mb-6">
            Convert length, weight, temperature, and currency.
          </p>
          <a
            href="converter"
            class="btn-animate inline-block px-6 py-2 rounded-full bg-gradient-to-r from-purple-500 to-pink-500 text-white font-medium pointer-events-none"
            >Open Tool</a
          >
        </div>

        <div
          class="bg-white/90 backdrop-blur rounded-3xl shadow-lg p-8 text-center border border-gray-100 transform transition duration-500 hover:-translate-y-3 hover:scale-105 hover:shadow-2xl hover:bg-white animate-fade-up delay-100"
        >
          <h2 class="text-2xl font-semibold text-gray-800 mb-3">Calculator</h2>
          <p class="text-gray-600 mb-6">
            Perform basic arithmetic calculations quickly.
          </p>
          <a
            href="calculator"
            class="pointer-events-none btn-animate inline-block px-6 py-2 rounded-full bg-gradient-to-r from-purple-500 to-pink-500 text-white font-medium hover:opacity-90 shadow-md transition"
            >Open Tool</a
          >
        </div>

        <div
          class="bg-white/90 backdrop-blur rounded-3xl shadow-lg p-8 text-center border border-gray-100 transform transition duration-500 hover:-translate-y-3 hover:scale-105 hover:shadow-2xl hover:bg-white animate-fade-up delay-200"
        >
          <h2 class="text-2xl font-semibold text-gray-800 mb-3">
            BMI Calculator
          </h2>
          <p class="text-gray-600 mb-6">
            Check your body mass index and category.
          </p>
          <a
            href="bmi"
            class="pointer-events-none btn-animate inline-block px-6 py-2 rounded-full bg-gradient-to-r from-purple-500 to-pink-500 text-white font-medium hover:opacity-90 shadow-md transition"
            >Open Tool</a
          >
        </div>

        <div
          class="bg-white/90 backdrop-blur rounded-3xl shadow-lg p-8 text-center border border-gray-100 transform transition duration-500 hover:-translate-y-3 hover:scale-105 hover:shadow-2xl hover:bg-white animate-fade-up delay-300"
        >
          <h2 class="text-2xl font-semibold text-gray-800 mb-3">
            Loan Calculator
          </h2>
          <p class="text-gray-600 mb-6">
            Calculate EMI payments and total loan cost.
          </p>
          <a
            href="loan"
            class="pointer-events-none btn-animate inline-block px-6 py-2 rounded-full bg-gradient-to-r from-purple-500 to-pink-500 text-white font-medium hover:opacity-90 shadow-md transition"
            >Open Tool</a
          >
        </div>

        <div
          class="bg-white/90 backdrop-blur rounded-3xl shadow-lg p-8 text-center border border-gray-100 transform transition duration-500 hover:-translate-y-3 hover:scale-105 hover:shadow-2xl hover:bg-white animate-fade-up delay-400"
        >
          <h2 class="text-2xl font-semibold text-gray-800 mb-3">
            Age Calculator
          </h2>
          <p class="text-gray-600 mb-6">
            Find your exact age in years, months, days.
          </p>
          <a
            href="age"
            class="pointer-events-none btn-animate inline-block px-6 py-2 rounded-full bg-gradient-to-r from-purple-500 to-pink-500 text-white font-medium hover:opacity-90 shadow-md transition"
            >Open Tool</a
          >
        </div>

        <div
          class="bg-white/90 backdrop-blur rounded-3xl shadow-lg p-8 text-center border border-gray-100 transform transition duration-500 hover:-translate-y-3 hover:scale-105 hover:shadow-2xl hover:bg-white animate-fade-up delay-500"
        >
          <h2 class="text-2xl font-semibold text-gray-800 mb-3">
            Text Utilities
          </h2>
          <p class="text-gray-600 mb-6">
            Count words, reverse, and format text easily.
          </p>
          <a
            href="texttools"
            class="pointer-events-none btn-animate inline-block px-6 py-2 rounded-full bg-gradient-to-r from-purple-500 to-pink-500 text-white font-medium hover:opacity-90 shadow-md transition"
            >Open Tool</a
          >
        </div>
      </div>
    </main>

    <!-- Footer -->
    <footer
      class="rounded-t-xl bg-gradient-to-r from-indigo-600 via-purple-600 to-pink-600 text-white text-center py-6 text-sm"
    >
    Tools.com | Made with MBM3730
    </footer>

    <!-- Animations -->
    <style>
      @keyframes fade-in {
        from {
          opacity: 0;
          transform: translateY(-20px);
        }
        to {
          opacity: 1;
          transform: translateY(0);
        }
      }

      @keyframes fade-up {
        from {
          opacity: 0;
          transform: translateY(40px);
        }
        to {
          opacity: 1;
          transform: translateY(0);
        }
      }

      @keyframes pulse-glow {
        0%,
        100% {
          transform: scale(1);
          box-shadow: 0 0 0px rgba(255, 255, 255, 0);
        }
        50% {
          transform: scale(1.05);
          box-shadow: 0 0 20px rgba(255, 255, 255, 0.6);
        }
      }

      .animate-fade-in {
        animation: fade-in 1s ease-out forwards;
      }
      .animate-fade-up {
        animation: fade-up 1s ease-out forwards;
      }

      .delay-100 {
        animation-delay: 0.1s;
      }
      .delay-200 {
        animation-delay: 0.2s;
      }
      .delay-300 {
        animation-delay: 0.3s;
      }
      .delay-400 {
        animation-delay: 0.4s;
      }
      .delay-500 {
        animation-delay: 0.5s;
      }

      /* Button hover animation */
      .btn-animate:hover {
        animation: pulse-glow 1s infinite;
      }
    </style>
  </body>
</html>
