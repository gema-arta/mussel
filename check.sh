#!/bin/sh -e

# Copyright (c) 2018-2022, Firas Khalil Khana
# Distributed under the terms of the ISC License

#
# Repurposed from glaucus's require script for use in mussel. The original
# script can be found over at:
# <https://github.com/glaucuslinux/glaucus/blob/master/scripts/require>
#

printf 'bash:      '
bash --version | sed 1q | cut -d' ' -f4

printf 'bc:        '
bc --version | sed 1q | cut -d' ' -f2

printf 'binutils:  '
ld --version | sed 1q | cut -d' ' -f4-

printf 'bison:     '
bison --version | sed 1q | cut -d' ' -f4

printf 'bzip2:     '
bzip2 --version 2>&1 < /dev/null | sed 1q | cut -d' ' -f8 | sed s/,//

printf 'ccache:    '
ccache --version | sed 1q | cut -d' ' -f3

printf 'coreutils: '
ls --version | sed 1q | cut -d' ' -f4

printf 'diffutils: '
diff --version | sed 1q | cut -d' ' -f4

printf 'findutils: '
find --version | sed 1q | cut -d' ' -f4

printf 'g++:       '
g++ --version | sed 1q | cut -d' ' -f3

printf 'gawk:      '
gawk --version | sed 1q | cut -d' ' -f3 | sed s/,//

printf 'gcc:       '
gcc --version | sed 1q | cut -d' ' -f3

printf 'git:       '
git --version | cut -d' ' -f3

printf 'glibc:     '
/lib/libc.so.6 | sed 1q | cut -d' ' -f9 | sed s/\.$//

printf 'grep:      '
grep --version | sed 1q | cut -d' ' -f4

printf 'gzip:      '
gzip --version | sed 1q | cut -d' ' -f2

printf 'linux:     '
uname -r

printf 'lzip:      '
lzip --version | sed 1q | cut -d' ' -f2

printf 'm4:        '
m4 --version | sed 1q | cut -d' ' -f4

printf 'make:      '
make --version | sed 1q | cut -d' ' -f3

printf 'perl:      '
perl -V:version | cut -d"'" -f2

printf 'rsync:     '
rsync --version | sed 1q | cut -d' ' -f4

printf 'sed:       '
sed --version | sed 1q | cut -d' ' -f4

printf 'tar:       '
tar --version | sed 1q | cut -d' ' -f4

printf 'texinfo:   '
makeinfo --version | sed 1q | cut -d' ' -f4

printf 'xz:        '
xz --version | sed 1q | cut -d' ' -f4

printf 'zstd:      '
zstd --version | cut -d' ' -f7 | sed 's/,$//'
