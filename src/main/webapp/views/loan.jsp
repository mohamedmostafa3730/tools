<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Loan Calculator - Tools.com</title>
    <link href="/css/output.css" rel="stylesheet" />
  </head>
  <body
    class="bg-gradient-to-br from-purple-200 via-pink-100 to-indigo-200 min-h-screen flex flex-col opacity-0 animate-page-enter"
  >
    <header
      class="rounded-b-xl bg-gradient-to-r from-indigo-600 via-purple-600 to-pink-600 text-white text-center py-12 shadow-xl"
    >
      <h1 class="text-4xl font-extrabold mb-2">Loan / EMI Calculator</h1>
      <p class="text-gray-200 text-lg">Estimate your monthly EMI easily.</p>
    </header>

    <main class="flex-1 container mx-auto px-6 py-14">
      <div
        class="bg-white/90 backdrop-blur rounded-3xl shadow-lg p-10 max-w-md mx-auto text-center border border-gray-100 transform transition duration-500 hover:shadow-2xl"
      >
        <form class="space-y-6">
          <div>
            <label class="block text-gray-700 font-medium mb-2"
              >Loan Amount</label
            >
            <input
              type="number"
              placeholder="Enter loan amount"
              class="w-full p-3 rounded-xl border border-gray-300 focus:ring-2 focus:ring-indigo-400 focus:outline-none"
            />
          </div>
          <div>
            <label class="block text-gray-700 font-medium mb-2"
              >Interest Rate (%)</label
            >
            <input
              type="number"
              placeholder="Enter interest rate"
              class="w-full p-3 rounded-xl border border-gray-300 focus:ring-2 focus:ring-indigo-400 focus:outline-none"
            />
          </div>
          <div>
            <label class="block text-gray-700 font-medium mb-2"
              >Tenure (Months)</label
            >
            <input
              type="number"
              placeholder="Enter tenure"
              class="w-full p-3 rounded-xl border border-gray-300 focus:ring-2 focus:ring-indigo-400 focus:outline-none"
            />
          </div>
          <div>
            <label class="block text-gray-700 font-medium mb-2"
              >EMI Result</label
            >
            <input
              type="text"
              placeholder="Result"
              readonly
              class="w-full p-3 rounded-xl border border-gray-300 bg-gray-100 text-gray-600 cursor-not-allowed"
            />
          </div>
          <button
            class="hover:brightness-110 transition-all px-6 py-3 rounded-xl bg-gradient-to-r from-indigo-500 to-purple-500 text-white font-medium shadow-md transition"
          >
            Calculate
          </button>
        </form>

        <div class="mt-10">
          <a
            href="/"
            class="btn-animate inline-block px-6 py-2 rounded-full bg-gray-700 text-white font-medium hover:bg-gray-800 transition"
          >
          Back to Home
          </a>
        </div>
      </div>
    </main>

    <footer class="rounded-t-xl bg-gradient-to-r from-indigo-600 via-purple-600 to-pink-600 text-white text-center py-6 text-sm">
    Tools.com | Made with MBM3730
    </footer>

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
