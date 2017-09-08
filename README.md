## discourse-hide-full-names

A [Discourse](https://github.com/discourse/discourse) plugin to hide full names from bots/spiders and guest (i.e. non-logged) users in individual posts.

### Usage

Install and enable along with 
* _Settings > Users >_ `enable names` + `hide user profiles from public`
* _Settings > Posting >_ `display name on posts`.

### Installation

Follow the [Install a Plugin](https://meta.discourse.org/t/install-a-plugin/19157) howto, adding the lines
```
- git clone https://github.com/tmikkonen/discourse-hide-full-names.git --branch v0.2 --single-branch
- bash discourse-hide-full-names/script/plugin.sh
```

### Known Issues
* ~~Overrides a core file in Discourse. If/when that core file is updated, this plugin will need updating too.~~  
  (UPDATE: Each rebuild now creates the overriding file from the core file thus minimizing the need to keep track of every Discourse update)
* No l10n other than **en**.
