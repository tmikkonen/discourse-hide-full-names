## discourse-hide-full-names

A [Discourse](https://github.com/discourse/discourse) plugin to hide full names from bots/spiders and guest (i.e. non-logged) users in individual posts.

### Usage

Install and enable along with _Settings > Users >_ `enable names` + `hide user profiles from public` and _Settings > Posting >_ `display name on posts`.

### Installation

Follow the [Install a Plugin](https://meta.discourse.org/t/install-a-plugin/19157) howto, using
`git clone https://github.com/tmikkonen/discourse-hide-full-names.git` as the plugin command.

### Known Issues
* Overrides the use of a core file in Discourse. If/when that core file is updated, this plugin will need updating too.
* No l10n other than **en**.
