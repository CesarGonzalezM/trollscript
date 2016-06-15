# Ñ aka. Ñééééééé

Because [Brainfuck](http://en.wikipedia.org/wiki/Brainfuck) and [TrollScript](https://github.com/tombell/trollscript) are so easy, ñé?

## DESCRIPTION

Ñ is basically an _esoteric_ dialect of Brainfuck forked from TrollScript

Interpreter is based on [this gist I found](https://gist.github.com/69910) hacked to run TrollScript instead.

Similar to another esoteric language [cow](http://www.bigzaphod.org/cow/).

## USAGE

It's so simple even a troll could do it: `Ñé path/to/script.ñé`

### The Language

As it's based on Brainfuck, it's fairly simple (lol?) to understand and use.
The eight operators from Brainfuck are simply replaced with TrollScript
trigraphs. Also TrollScript scripts can optionally begin with `tro` and end
with `ll.`.

* `>` is `ñññ` - increment the data pointer (to point to the next cell to the right)
* `<` is `ññé` - decrement the data pointer (to point to the next cell to the left)
* `+` is `ñéñ` - increment (increase by one) the byte at the data pointer
* `-` is `ñéé` - decrement (decrease by one) the byte at the data pointer
* `.` is `éññ` - output a character, the ASCII value of which being the byte at the data pointer
* `,` is `éñé` - accept one byte of input, storing its value in the byte at the data pointer
* `[` is `ééñ` - if the byte at the data pointer is zero, then instead of moving the instruction pointer forward to the next command, jump it forward to the command after the matching `]` command
* `]` is `ééé` - if the byte at the data pointer is nonzero, then instead of moving the instruction pointer forward to the next command, jump it back to the command after the matching `[` command
