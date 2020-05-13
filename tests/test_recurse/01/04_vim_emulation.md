# Vim Emulation

[Vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim) is a powerful text editing language, 

To allow for relative line numbers for easier jumping, in `settings.json` add,

```` json
    "editor.lineNumbers":"relative"
````

We may wish to allow some shortcut keys to retain their original VSCode bindings. To do so we just disable vim from handling them. For example we wish to retain the use of the 'Ctrl+k' keys, in the `settings.json`,

````json
    "vim.handleKeys": {
        "<C-k>": false,
        "<C-b>": false,
        "<C-n>": false,
        "<C-c>": false,
        "<C-v>": false
    }
````

## Explorer

Vim can be used directly in the explorer, to search for files we can employ `/` then just type in the filename.

## Useful Resources

- [Vim Cheat Sheet](https://vim.rtorr.com/)
- [Vim Adventures](https://vim-adventures.com/)
- [Code Fu With Vim and VSCode](https://www.barbarianmeetscoding.com/blog/2019/02/08/boost-your-coding-fu-with-vscode-and-vim)

## Some Useful Commands

### Change Word Surroundings

To surround some code with new text,

````python
hello = "HelloWorld"
````

if we want to convert `"` to `()`, highlight the `"` and type in normal mode,

````vim
cs"(
````

we see the command is of the form `cs<target><new>`, we can read this as `change surrounding target with new`

### Surround Word/Words

let's say we forget to surround some work in parenthesis,

````python
hello = HelloWorld
````

we can surround the word in vim with,

````vim
ysw"
````

when we wish to surround two words,

````python
hello = Hello World
````

we can use the following

````vim
ys2w"
````

we see this command is of the form `ys<numwords>w<new>`, and can be read as `yank surround <numwords> words with <target>`
