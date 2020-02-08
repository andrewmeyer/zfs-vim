" Vim syntax file
" Language: ZFS on Linux vdev_id.conf file
" Maintainer: Andrew Meyer <ameyer@nodnetwork.org> <https://keybase,io/ameyer>
" Last Change: 2020-02-08
" URL: https://github.com/andrewmeyer/zfs-vim

if exists("b:current_syntax")
  finish
endif

syn case ignore

" Comments
syn match     zfsComment      /#.*$/ contains=zfsOldDrive,zfsTodo,zfsNote
syn keyword   zfsOldDrive     contained OLD REMOVED REPLACED
syn keyword   zfsTodo         contained TODO FIXME XXX
syn keyword   zfsNote         contained NOTE

" ZFS vdev config arguments
syn keyword   zfsConfig         enclosure_symlinks nextgroup=zfsYesNo skipwhite
syn keyword   zfsConfig         enclosure_symlinks_prefix nextgroup=zfsString skipwhite
syn keyword   zfsConfig         multipath nextgroup=zfsYesNo skipwhite
syn keyword   zfsConfig         topology  nextgroup=zfsTopologyType skipwhite
syn keyword   zfsConfig         phys_per_port nextgroup=zfsNumber skipwhite
syn keyword   zfsConfig         slot nextgroup=zfsSlotType skipwhite

" ZFS Alias definitions
syn keyword   zfsAlias          alias nextgroup=zfsAliasName skipwhite
syn match     zfsAliasName      /\S\+/ nextgroup=zfsAliasPath skipwhite contained
syn match     zfsAliasPath      /\S\+/ contained
syn match     zfsAliasWWN       /wwn-0x\S\{16}/ containedin=zfsAliasPath contained

" Keyword Types
syn keyword   zfsTopologyType contained sas_direct sas_switch
syn keyword   zfsSlotType     contained bay phy port id lun ses

"re-usable syntax types
syn keyword   zfsYesNo        contained yes no
syn match     zfsNumber       /\d\+/ contained
syn match     zfsString       /\S\+/ contained

" Define the default highlighting.¬
hi def link   zfsComment          comment
hi def link   zfsOldDrive         Normal
hi def link   zfsTodo             Todo
hi def link   zfsNote             Todo

hi def link   zfsConfig           Special

hi def link   zfsAlias            Type
hi def link   zfsAliasName        Identifier
hi def link   zfsAliasPath        Constant
hi def link   zfsAliasWWN         Special

hi def link   zfsConfigParam      Operator

hi def link   zfsTopologyType     zfsConfigParam
hi def link   zfsSlotType         zfsConfigParam

hi def link   zfsYesNo            zfsConfigParam
hi def link   zfsNumber           zfsConfigParam
hi def link   zfsString           zfsConfigParam

let b:current_Syntax = "zfs_vdev_id"
