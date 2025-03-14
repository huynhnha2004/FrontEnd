module.exports = {
  content: [
    './src/**/*.{js,jsx,ts,tsx}',  // Đảm bảo Tailwind quét các tệp đúng
  ],
  theme: {
    extend: {fontFamily: {
      sans: ['Segoe UI', 'Helvetica', 'Arial', 'sans-serif'],
      serif: ['Georgia', 'Times New Roman', 'serif'],
      mono: ['Courier New', 'Monaco', 'monospace'],
    },
    fontSize: {
      'h1': '2.5rem',  // Tương đương với text-4xl
      'h2': '2rem',  // Tương đương với text-3xl
      'h3': '1.5rem',  // Tương đương với text-2xl
    },
    letterSpacing: {
      wide: '0.05em',  // Giãn chữ nhẹ cho heading
      wider: '0.1em',  // Giãn chữ nhiều hơn
    },
    lineHeight: {
      tight: '1.1',  // Giảm khoảng cách giữa các dòng
      snug: '1.3',   // Cải thiện độ đẹp mắt
    },
},
  },
  plugins: [require('daisyui'),
  ],
  daisyui: {
    themes: [
      {
        mytheme: {
          "primary": "#ff6347", // Màu sắc cho btn-primary
          "secondary": "#ffdbac", // Màu sắc cho btn-secondary
          "accent": "#03a9f4",
          "neutral": "#bf8bff",
          "base-100": "#ffffff",
        },
      },
    ],
  },
}
