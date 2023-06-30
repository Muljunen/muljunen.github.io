#!/bin/bash

CSS_LIST="
https://cdn.jsdelivr.net/npm/featherlight@1.7.14/release/featherlight.min.css
"

JS_LIST="
https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js
https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollTrigger.min.js
https://cdn.jsdelivr.net/npm/featherlight@1.7.14/release/featherlight.min.js
"

CSS_PLUGINS_FILE="assets/css/plugins.css"
JS_PLUGINS_FILE="assets/js/plugins.js"

# Remove old files
echo "Removing old plugins files"
rm -f ${CSS_PLUGINS_FILE}
rm -f ${JS_PLUGINS_FILE}

echo "Starting to download CSS plugins"
for URL in ${CSS_LIST}; do
    echo "Downloading file ${URL} to plugins.css"
    curl -s ${URL} >> ${CSS_PLUGINS_FILE}
done

echo "Starting to download JS plugins"
for URL in ${JS_LIST}; do
    echo "Downloading file ${URL} to plugins.js"
    curl -s ${URL} >> ${JS_PLUGINS_FILE}
done



