# Making Things Pretty

To truly experience the joys of programming customizability of the editor is an absolute necessity! It is paramount to your sanity to have both an organized and good looking editor for those inevitable long nights filled with writing or coding. Also, it's a fun way to procrastinate and still feel productive.

## Pretty Fonts

A lot of our work is going to be within either the text editor or the terminal. A nice looking font not only improves the looks of you're code but significantly improves readability, reducing the energy necessary for parsing, scanning and joining multiple characters.

I personally recommend installing [fira code](https://github.com/tonsky/FiraCode). The font contains ligatures for common programming multi-character combinations and, in my personal experience, helps to significantly improve the readability of code.

After following the [installation instructions](https://github.com/tonsky/FiraCode/wiki/Installing) we can setup `Fira Code` in windows as the font for our `editor`, `integratedTerminal` and `debugConsole` by adding the following lines to our `settings (JSON)`,

````JSON
    "editor.fontFamily": "Fira Code",
    "editor.fontLigatures": true,
    "terminal.integrated.fontFamily": "Fira Code",
    "debug.console.fontFamily": "Fira Code",
````

For more fonts check out [Nerd Fonts](https://www.nerdfonts.com/).

For a nice guide check out [Scott Hanselman](https://www.youtube.com/watch?v=oHhiMf_6exY)

## Opacity

Sometimes you might have a cool background that you would like to see, set the opacity of the entire editor with [GlassIt-VSC](https://marketplace.visualstudio.com/items?itemName=s-nlf-fh.glassit), in `settings (JSON)`,

````json
    "glassit.alpha": 235
````

## Coloured Brackets

It can sometimes be difficult to discern which brackets belong to which group, for such cases [Rainbow Brackets](https://marketplace.visualstudio.com/items?itemName=2gua.rainbow-brackets) is a must.

## Better Icons

Icons provide visual feedback onto what a filetype is and what a folder contains. [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons) provides good looking icons for an improved experience when exploring the icon tree.

## Deleting White Spaces

Trailing spaces can cause issues,

- when using macros which bring you to the end of the line
- when directly reading lines from codes

[Trailing Spaces](https://marketplace.visualstudio.com/items?itemName=shardulm94.trailing-spaces) provides macros which can be used to delete all trailing white spaces in a file
