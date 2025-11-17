
set -e
set -x

CFLAGS="-march=native -mtune=native -O3 -fPIC" \
FCFLAGS="-march=native -mtune=native -O3 -fPIC" \
python -m pip install -vvv --ignore-installed --no-deps --prefix "${PREFIX}" .

# Run tests
#pytest "${SRC_DIR}/pixell/tests"
