/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          DEFAULT: '#2E7D32',
          light: '#81C784',
          dark: '#1B5E20',
        },
        secondary: '#f1f8e9',
      }
    },
  },
  plugins: [],
}
