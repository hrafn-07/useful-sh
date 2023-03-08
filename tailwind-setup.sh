#!/bin/bash
clear
echo "INSTALLIN TAILWIND CSS..."
sleep .7s
echo "."
sleep .7s
echo "."
sleep .7s
echo "."

echo "/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{html,js}"],
  theme: {
    extend: {},
  },
  plugins: [],
}" >> ./tailwind.config.js

npm install -D tailwindcss 
npx tailwindcss init
mkdir ./src
mkdir ./src/css
mkdir ./src/js
mkdir ./src/images

touch ./input.css
echo "@tailwind base;
@tailwind components;
@tailwind utilities;" >> ./input.css

echo '{
  "name": "tutorials",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "watch": "npx tailwindcss -i ./input.css -o ./src/css/output.css --watch"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "devDependencies": {
    "tailwindcss": "^3.2.7"
  }
}
' >> ./package.json

touch ./src/index.html
echo '<!doctype html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="/dist/output.css" rel="stylesheet">
</head>
<body>
  <h1 class="text-3xl font-bold underline">
    Hello world!
  </h1>
</body>
</html>' >> ./src/index.html
