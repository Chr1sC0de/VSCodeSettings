# Making things Pretty

To truly experience the joys of programming customizability of the editor is an absolute necessity! It is paramount to your sanity to have both an organized and good looking editor for those inevitable long nights filled with writing or coding. Also, it's a fun way to procrastinate and still feel productive.

## Pretty Fonts

A lot of our work is going to be within either the text editor or the terminal. A nice looking font not only improves the looks of you're code but significantly improves readability, reducing the energy necessary for parsing, scanning and joining multiple characters.

I personally recommend installing [fira code](https://github.com/tonsky/FiraCode). The font contains ligatures for common programming multi-character combinations and, in my personal experience, helps to significantly improve the readability of code.

After following the [installation instructions](https://github.com/tonsky/FiraCode/wiki/Installing) we can setup `Fira Code` in windows as the font for our `editor`, `integratedTerminal` and `debugConsole` by adding the following lines to our `settings (JSON)`,

````json
"editor.fontFamily": "'Fira Code'",
"editor.fontLigatures": true,
"editor.lineNumbers": "relative",
"terminal.integrated.fontFamily": "'Fira Code'",
"debug.console.fontFamily": "'Fira Code'",
````

## 
