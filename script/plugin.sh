#!/bin/bash
#
# Copy a Discourse core file to the plugin directory and modify it accordingly

DISCOURSE=/var/www/discourse
D_PATH=assets/javascripts/discourse/widgets
D_FILE=poster-name.js.es6
PLUGIN=discourse-hide-full-names
PLUGIN_PATH=$DISCOURSE/plugins/$PLUGIN/$D_PATH
PLUGIN_FILE=$PLUGIN_PATH/$D_FILE

FIND_CODE="html(attrs)"
ADD_CODE='const showName = ((Discourse.User.current() \&\& this.siteSettings.hide_full_names_without_login_enabled) \|\| !this.siteSettings.hide_full_names_without_login_enabled);'

# check if the file already exists
if [ -f "$PLUGIN_FILE" ]; then
  rm $PLUGIN_FILE
fi
mkdir -p $PLUGIN_PATH
cp $DISCOURSE/app/$D_PATH/$D_FILE $PLUGIN_FILE

# modify the file if it hasn't been modified already
if ! grep -q hide_full_names_without_login_enabled $PLUGIN_FILE; then
  # add condition as a constant for usability
  sed -i -e '/'"$FIND_CODE"'/a \    '"$ADD_CODE" $PLUGIN_FILE
  # modify the rules to use also our constant 
  sed -i -e 's/nameFirst ?/(nameFirst \&\& showName) ?/' $PLUGIN_FILE
  sed -i -e 's/if (name \&\& this.siteSettings.display_name_on_posts/if (showName \&\& name \&\& this.siteSettings.display_name_on_posts/' $PLUGIN_FILE
fi

# make sure the owner of the file is correct
chown discourse $PLUGIN_FILE
