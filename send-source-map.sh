SERVICEVERSION=`node -e "console.log(require('./package.json').version);"` && \ 
find dist/*.js -type f -exec 
curl http://localhost:8200/assets/v1/sourcemaps -X POST \
    -F sourcemap="@{}.map" \
    -F service_version="$SERVICEVERSION" \
    -F bundle_filepath="http://localhost:8081/{}" \
    -F service_name="$SERVICENAME"\;
