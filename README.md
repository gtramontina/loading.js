# loading.js #
As I'm aiming to move [Writeboard](http://github.com/gtramontina/Writeboard) to use javascript micro-frameworks instead of a complete huge lib, I've extracted this small one from it.
The objective is to have a set javascript functions that help creating 'loading', 'modal', 'prompt' dialogs.

Usage
-----
Add 'loading.min.js' and a CSS to style your messages (loading.writeboard.css is the one I used on the Writeboard project)

-   loading.show('Please wait...'); // What do you think this does? :-)
-   loading.hide(); // And this?

