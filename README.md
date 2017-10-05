## discourse-hide-full-names

A [Discourse](https://github.com/discourse/discourse) plugin to hide full names from bots/spiders and guest (i.e. non-logged) users in individual posts.

### Usage

Install and enable along with 
* _Settings > Users >_ `enable names` + `hide user profiles from public`
* _Settings > Posting >_ `display name on posts`.

### Installation

Follow the [Install a Plugin](https://meta.discourse.org/t/install-a-plugin/19157) howto, adding the lines
```
- git clone https://github.com/tmikkonen/discourse-hide-full-names.git
- bash discourse-hide-full-names/script/plugin.sh
```

### Known Issues
* No l10n other than **en**
* ~~Overrides a core file in Discourse. If/when that core file is updated, this plugin will need updating too.~~  
  _UPDATE v0.2: Each rebuild now creates the overriding file from the core file thus minimizing (but not totally obsoleting) the need to keep track of every Discourse update_
* ~~It seems _Settings > Users >_ `prioritize username in ux` needs to be enabled, too. Otherwise usernames are hidden and full names shown~~  
  _UPDATE v0.3: The overriding file is now created with cleaner code making it irrelevant whether usernames are prioritized or not_
* The script isn't run when updating using Discourse GUI, therefore either run it via command line by entering the Docker app after GUI update:
```
# cd /var/discourse
# ./launcher enter app
# plugins/discourse-hide-full-names/script/plugin.sh
# exit
```
or just forget the GUI update and rebuild:
```
# cd /var/discourse
# ./launcher rebuild app
```

