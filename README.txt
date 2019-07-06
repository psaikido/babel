Hugh Carroll hughie@carrollonline.co.uk

A client side, standalone html form writes on-demand javascript for dynamically reloading a page with a user's language.  

This is designed to be used as a plugin to other people's systems when they want a user to submit their own info.
(http://ajaxpatterns.org/On-Demand_Javascript)

babel/client/babel.html has a select box of languages.
When you choose one it dynamically writes a javascript in the head of the document that has a src eg:
"[domain]/translator.php?lang=francais"

babel/server/translator.php connects to the db and reads the relevant table,

For each field found it writes dhmtl that utf_decodes each value and is handed back to the client by simply echoing it.

We have a doc for giving to a native speaker where they fill in all the field entries.eg:
babel/docs/eng_chinese.doc

When that is filled in, it's data is added to babel/docs/translator.csv.
Using babel/server/uploader.html and feeding it this csv, it gives it to babel/server/processLangFile.php which bungs it in the database.
