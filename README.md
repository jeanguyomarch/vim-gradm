vim-grsecurity
==============

Provide syntax highlighting for:
- policy file (typically `/etc/grsec/policy`)
- learning heuristics (typically `/etc/grsec/learn_config`)

The policy syntax is based on https://github.com/verbosemode/grsecurity.vim, but it has been heavily modified
to bring more features, fix bugs, update to the newest syntax.


Installation
============

_Raw installation:_ copy the `syntax` and `ftdetect` folders (and their contents) in your vim's runtimepath (by default `$HOME/.vim`).

_With vundle:_
- install vundle: https://github.com/gmarik/vundle;
- add to your vimrc: `Plugin 'jeanguyomarch/vim-gradm'`;
- re-run vim and call `:PluginInstall`.


License
=======

The MIT License (MIT)

Copyright (c) 2015 Jean Guyomarc'h

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

