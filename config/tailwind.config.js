const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        oceanblack: {
        100: "#d3d3d5",
        200: "#a6a7ab",
        300: "#7a7c82",
        400: "#4d5058",
        500: "#21242e",
        600: "#1a1d25",
        700: "#14161c",
        800: "#0d0e12",
        900: "#070709"
        },
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('daisyui.d.ts')
  ],
}
