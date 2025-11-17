
set -e
set -x

CFLAGS="-march=native -mtune=native -Wno-error -O3 -fPIC -I${PREFIX}/include" \
CXXFLAGS="-march=native -mtune=native -Wno-error -O3 -fPIC -std=c++14 -I${PREFIX}/include" \
BOOST_ROOT="${PREFIX}" \
FLAC_ROOT="${PREFIX}" \
python -m pip install -vvv --ignore-installed --no-deps --prefix "${PREFIX}" .
