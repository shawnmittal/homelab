docker run -d \
    -v /:/srv \
    -v /srv/file-browser/filebrowser.db:/database.db \
    -v /srv/file-browser/.filebrowser.json:/.filebrowser.json \
    --user $(id -u):$(id -g) \
    -p 8080:80 \
    filebrowser/filebrowser
