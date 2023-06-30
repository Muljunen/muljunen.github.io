#!/bin/bash

echo "Minifying CSS file main.css"
curl -X POST -s --data-urlencode "input=$(cat assets/css/main.css)" https://www.toptal.com/developers/cssminifier/api/raw > assets/css/main.min.css

echo "Minifying JS file main.js"
curl -X POST -s --data-urlencode "input=$(cat assets/js/main.js)" https://www.toptal.com/developers/javascript-minifier/api/raw > assets/js/main.min.js