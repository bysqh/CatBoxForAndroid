curl -Lo node.tar.gz https://nodejs.org/dist/latest/node-v20.5.1-linux-x64.tar.gz

echo "a8678ae00425acdf692e943e3f1cea11a4c46281e4257b82886423bd4ef6f2b5 node.tar.gz" | sha256sum -c -

tar xzf node.tar.gz --strip-components=1 -C /usr/local/

rm node.tar.gz

npm install -g pnpm