docker run --rm -v ${pwd}/.:/work nuitsjp/md2review:1.12.0 /bin/sh -c "cd /work && md2review README.md > README.re"