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
* ~~Overrides a core file in Discourse. If/when that core file is updated, this plugin will need updating too.~~  
  _UPDATE: Each rebuild now creates the overriding file from the core file thus minimizing (but not totally obsoleting) the need to keep track of every Discourse update_
* It seems _Settings > Users >_ `prioritize username in ux` needs to be enabled too. Otherwise usernames are hidden and full names shown
* No l10n other than **en**.
