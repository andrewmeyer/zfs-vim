# Installation
  - Install by hand
  - Use Vim-addon-manager (VAM) by adding the following line to your .vimrc file
    - ```VAMActivate github:andrewmeyer/zfs-vim```
    - My Fish-friendly VAM fork: https://github.com/andrewmeyer/vim-addon-manager
    - Upstream VAM: https://github.com/MarcWeber/vim-addon-manager

# ZFS Config Syntax Highlighting
  Written with the [Solarized](https://github.com/altercation/vim-colors-solarized) colorscheme

  This syntax kit should contain syntax highlighting files for commonly used ZFS config files use with ZFS on Linux

## vdev_id.conf
### Features
  - Syntax highlighting for common `vdev_id.conf` command arguments
  - Syntax highlighting for alias definitions
  - Special highlighting for WWN based aliases
  - Support for TODO style notation of removed drives (#REMOVED|OLD|REPLACED)

### Missing
  - Support for `channel` definitions
  - Support for `pci_slot` definitions

### In Progress
  - The syntax types could use some work and tuning.
