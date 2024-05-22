## Modes

Vim can be thought of as having 4 distinct modes in which in operates in:

* normal mode: the default mode that vim enters upon opening
* insert mode: allows you to insert text like in nano
* visual mode: allows you to highlight things
* command mode: allows you to enter commands

You can enter insert mode via ```i``` or ```a``` in normal mode. The distinction is that ```i``` drops you before the hovered character and ```a``` drops you after.
You can escape a mode via ```Esc``` or via ```Ctrl+{```

You can enter visual mode via hitting ```v``` in normal mode. All the keybindings of normal mode transfer over, but now, it highlights the text.

You can enter command mode with ":".

Type ```:w``` to save context of file.
Type ```:wq``` to save file and quit vim.

## Anatomy of a motion

TL;DR Each action can be decomposed into a command, a count, and a motion. All of these are not necessary for a valid command

## Motions

Works in normal and visual mode. Note that <dfgd> refers to some type of value. It does not refer to typing <+dfgd+>

| Key | Functionality|
| ----| -------------|
| j | Moves the cursor down |
| k | Moves the cursor up |
| l | Moves the cursor to the  right |
| h | Moves the cursor to the left | 
| w | Jumps to cursor to the next word |
| b | Jumps the cursor to the previous word |
| _ | Jump the cursor to the beginning of a line |
| $ | Jump the cursor to the end of a line |
| 0 | Jump the cursor to the beginning character of a line |
| f<char> | Jump to the next <char> in the line|
| t<char> | Jump to 1 before the next <char> in the line | 
| , | After a f or t command, jump to the previous instance |
| ; | after a f or t command, jump to the next instance of the character |
| Shift+i| Move the cursor to the beginning of a line, and drop you in insert mode|
| Shift+a | Move the cursor to the end of a line, and drop you in insert mode |
| o | Make a new line below, and drop you in insert mode. Alternatively, if in visual mode, let's you jump from one side of a select to another|
| Shift+o | Make a new line above, and drop you in insert mode |
| Shift+] | Jump to the start tnext paragraph. A paragraph in this context means a contiguous block of text |
Shift +[ | Jump to the end of the previous paragraph |
| Ctrl+d | Jump a half page down|
| Ctrl+u | Jump a half page up |
| Shift+g | Jump to the end of the file |
| gg | Jump to the start of the file|
|:<line-no> | Jump to a particular line. (Useful with error messages) |
| /<str> | Search for a string below |
| ?<str> | Search for a string above |
| n | After searching, find next match in current direction |
| Shift+n | After searching, find next match in opposite direction |
| * | Search for the word that the cursor is currently on in forward dir |
| # | Same as *, but upwards |
| vi(| Highlight text within next parentheses. Can also do ```vi{``` for curled braces |
| va( | Highlight text within next parenteses, and include the parentheses |
| yi( | Same as ```vi(```, but you copy the selection instead. Similar command for ```ya(```|
| viw | Highlight current word|
| yiw | copy up to next word |
| yap | Copy a contiguous block of code |
| Shift+vy | Copy a line, newline included |
| = | Align a line according to indentation rules|
| =ap | Align a paragraph according to indentation rules|
| > | Indent a line. Can do combos like ```>4j``` to indent the next 4 lines, or ```vap>``` to indent a block of text|
| Ctrl+v| Enter vertical editing mode. Can select multiple lines by appending j to the end|
| % | Jump to matching parentheses |
| Ctrl+^ | Jump to last file |
| Ctrl+w+s| Create a new window horizontally copying the current buffer|
| Ctrl+w+v | Create a new window vertically, copying the current buffer |
| Ctrl+w+<jkhl> | Jump to window in the jkhl direction(s) |

### Counting

You can augment these motions by preprending a number in front of them. This effectively performs the action that specified amount of times. For instance:

If you want to jump 8 lines above, type: ```8k```. If you want to skip 10 words prior, type: ```10b```. You should probably only use the up and down jumps though. Less mental overhead.

### Commands

#### d

Simple delete something. So if you want to delete the current and next line, type in: ```dd```

If you want to undo a delete, type in u.

If you want to redo a previous action, ```hit Ctrl+r```

Importantly, you can combine the delete command with motions. So if you wanted to delete the current line, plus 5 below it, type: ```d5j```. If you want to delete words, can do ```db```

##### c 
this is the same as d, but drops you into insert mode immediayely after.

#### y

When in visual mode, after highlighting a region, you can hit ```y``` to yank (copy) the text, which you can then paste via ```p```. If you want to copy the newline as well, you need to enter line mode. This is done via ```Shift+v```. This includes linebreaks when you yank something.

If you highlight a region and have something in the yank buffer, It will overwrite the highlighted region. The freshly deleted region will now be placed in the yank buffer, so that the next time you paste, you will be pasting the deleted text.

You don't even need to highlight text. You can combine yanking with counting to do multiline selections, after which, you can paste.


### Horizontal Motion

The f and t motions can be combined with other commands. For instance, ```df(``` will delete everything up to and including the the parentheses.
