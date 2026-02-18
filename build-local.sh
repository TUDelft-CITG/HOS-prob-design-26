#!/bin/bash
echo "
Building Website Locally
------------------------
If build is successful, you can view the website in your browser at:
    
    http://127.0.0.1:4000/

Keep the server running and it will automatically update the website
as you make changes to the source files.

Begin build ...
"
bundle exec --gemfile=Gemfile-local jekyll serve
