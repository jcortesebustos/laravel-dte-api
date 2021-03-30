const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/js/app.js', 'public/js').vue().extract(['vue', 'alpinejs'])
    .sass('resources/sass/fontawesome.scss', 'public/css/fontawesome.css')
    .sass('resources/sass/app.scss', 'public/css/boostrap.css')
    .postCss("resources/css/app.css", "public/css", [
        //require('postcss-import'),
        require("tailwindcss"),
        //require("@tailwindcss/jit"),
    ]);
