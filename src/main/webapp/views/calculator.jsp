<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <main
      class="flex justify-center items-start w-full px-6 py-12 animate-page-enter"
    >
      <div class="flex flex-col md:flex-row gap-10 w-100 max-w-5xl">
        <!-- Calculator Panel -->
        <div
          class="bg-white/90 backdrop-blur rounded-3xl shadow-lg p-10 max-w-md mx-auto text-center border border-gray-100 transform transition duration-500 hover:shadow-2xl"
        >
          <h1 class="text-2xl font-bold text-gray-800 mb-8">Calculator</h1>

          <form action="calculator" method="post" class="space-y-6">
            <!-- Number Inputs -->
            <input
              type="number"
              name="num1"
              placeholder="First number"
              required
              class="w-full p-5 rounded-xl border border-gray-300 bg-white text-gray-800 font-medium focus:outline-none focus:ring-2 focus:ring-indigo-400"
            />
            <input
              type="number"
              name="num2"
              placeholder="Second number"
              required
              class="w-full p-5 rounded-xl border border-gray-300 bg-white text-gray-800 font-medium focus:outline-none focus:ring-2 focus:ring-indigo-400"
            />

            <!-- Operation Select -->
            <select
              name="operator"
              required
              class="w-full p-5 rounded-xl border border-gray-300 bg-white text-gray-800 font-semibold focus:outline-none focus:ring-2 focus:ring-indigo-400"
            >
              <option value="">Select Operation</option>
              <option value="+">Addition => +</option>
              <option value="-">Subtraction => -</option>
              <option value="*">Multiplication => *</option>
              <option value="/">Division => /</option>
              <option value="%">Modulus => %</option>
            </select>

            <!-- Result Box -->
            <div
              class="bg-gray-50 rounded-2xl border border-gray-200 shadow-inner p-6"
            >
              <p class="text-gray-500 text-sm font-semibold mb-3">Result</p>
              <input
                type="text"
                value="Result: ${result}"
                readonly
                class="w-full p-5 rounded-xl bg-gray-100 text-gray-700 font-bold text-lg cursor-not-allowed"
              />
            </div>

            <!-- Submit Button -->
            <button
              type="submit"
              class="w-full bg-gradient-to-r from-indigo-600 to-purple-600 text-white p-5 rounded-xl font-semibold shadow-md hover:brightness-110 hover:scale-105 transition-all"
            >
              Calculate
            </button>
          </form>

          <!-- Back Button -->
          <div class="mt-8 text-center">
            <a
              href="/"
              class="w-full page-link btn-animate inline-block px-6 py-2 rounded-full bg-gray-700 text-white font-medium"
            >
              Back to Home
            </a>
          </div>
        </div>

        <!-- History Panel -->
        <div
          class="bg-white/90 backdrop-blur rounded-3xl shadow-lg p-10 max-w-md mx-auto text-center border border-gray-100 transform transition duration-500 hover:shadow-2xl"
        >
          <h2 class="text-2xl font-bold text-gray-800 mb-8">History</h2>

          <div class="max-h-[500px] overflow-y-auto space-y-4">
            <c:forEach var="op" items="${operations}">
              <div
                class="flex justify-between items-center bg-white border border-gray-200 p-5 rounded-xl shadow-sm fade-in-up"
                style="animation-delay: 0.2s"
              >
                <span class="text-gray-600 font-medium"
                  >${op.num1} ${op.operator} ${op.num2} =
                  <span class="text-indigo-600 font-bold text-lg"
                    >${op.result}</span
                  >
                </span>
              </div>
            </c:forEach>
            <!-- Replace with server values -->
          </div>
          <!-- Clear History Button -->
          <div class="mt-8 text-center">
            <a
              href="calculator"
              class="inline-block px-6 py-2 rounded-full bg-gradient-to-r from-purple-500 to-pink-500 text-white font-medium hover:brightness-110 hover:scale-105 transition-all"
            >
              Clear History
            </a>
          </div>
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
