#!/bin/bash
#
# Copy a Discourse core file to the plugin directory and modify it accordingly

DISCOURSE=/var/www/discourse
D_PATH=assets/javascripts/discourse/widgets
D_FILE=poster-name.js.es6
PLUGIN=discourse-hide-full-names
PLUGIN_PATH=$DISCOURSE/plugins/$PLUGIN/$D_PATH
PLUGIN_FILE=$PLUGIN_PATH/$D_FILE

# check if the file already exists
if [ -f "$PLUGIN_FILE" ]; then
  rm $PLUGIN_FILE
fi
mkdir -p $PLUGIN_PATH
cp $DISCOURSE/app/$D_PATH/$D_FILE $PLUGIN_FILE

# modify the file if it hasn't been modified already
if ! grep -q hide_full_names_without_login_enabled $PLUGIN_FILE; then
  sed -i -e 's,if (name \&\& this.siteSettings.display_name_on_posts,if (((Discourse.User.current() \&\& this.siteSettings.hide_full_names_without_login_enabled) \|\| !(this.siteSettings.hide_full_names_without_login_enabled)) \&\& name \&\& this.siteSettings.display_name_on_posts,' $PLUGIN_FILE
fi
