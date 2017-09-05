### discourse-hide-full-names

A [Discourse](https://github.com/discourse/discourse) plugin to hide full names in posts from bots/spiders and guest (i.e. non-logged) users.

## Usage

Install and enable along with `Settings > Users > enable names` & `Settings > Posting > display name on posts`.

## Installation

Follow the [Install a Plugin](https://meta.discourse.org/t/install-a-plugin/19157) howto, using
`git clone https://github.com/tmikkonen/discourse-hide-full-names.git` as the plugin command.

## Known Issues
* Overrides the use of a core file in Discourse. If/when that core file is updated, this plugin will need updating too.
* No l10n other than **en**.
