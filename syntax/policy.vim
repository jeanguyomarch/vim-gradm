" Vim syntax file
" Maintainer:   Jean Guyomarc'h <jean.guyomarch@gmail.com>
" URL:          https://github.com/jeanguyomarch/vim-gradm.git
" Last Change:  2015-07-05
" Version:      1.0

if version < 600
   syntax clear
elseif exists("b:current_syntax")
   finish
endif

syn sync fromstart

syn match       gradmComment            /#.*$/
syn keyword     gradmStatement          define role_transitions
syn match       gradmDefined            /\$\h\+/
syn match       gradmRole               /^role/ contains=gradmRoleFlags
syn match       gradmRole               /^role default/ contains=gradmRoleFlags
syn match       gradmRole               /^role admin/ contains=gradmRoleFlags
syn match       gradmSubject            /^subject/
syn match       gradmRoleAllowIP        /^role_allow_ip/ contains=gradmIPv4,gradmNetMask
syn keyword     gradmGroupTransition    group_transition_allow
syn keyword     gradmUserTransition     user_transition_allow
syn keyword     gradmSocketType         stream dgram tcp udp
syn keyword     gradmSocket             connect bind

syn keyword     gradmLinuxCap           CAP_CHOWN CAP_DAC_OVERRIDE CAP_DAC_READ_SEARCH CAP_FOWNER CAP_FSETID CAP_KILL CAP_SETGID
syn keyword     gradmLinuxCap           CAP_SETUID CAP_SETPCAP CAP_LINUX_IMMUTABLE CAP_NET_BIND_SERVICE CAP_NET_BROADCAST CAP_NET_ADMIN
syn keyword     gradmLinuxCap           CAP_NET_RAW CAP_IPC_LOCK CAP_IPC_OWNER CAP_SYS_MODULE CAP_SYS_RAWIO CAP_SYS_CHROOT CAP_SYS_PTRACE
syn keyword     gradmLinuxCap           CAP_SYS_PACCT CAP_SYS_ADMIN CAP_SYS_BOOT CAP_SYS_NICE CAP_SYS_RESOURCE CAP_SYS_TIME
syn keyword     gradmLinuxCap           CAP_SYS_TTY_CONFIG CAP_MKNOD CAP_LEASE CAP_AUDIT_WRITE CAP_AUDIT_CONTROL CAP_SETFCAP
syn keyword     gradmLinuxCap           CAP_MAC_OVERRIDE CAP_MAC_ADMIN CAP_SYSLOG CAP_WAKE_ALARM CAL_BLOCK_SUSPEND CAP_AUDIT_READ CAP_ALL

syn keyword     gradmPaxFlags           PAX_EMUTRAMP PAX_MPROTECT PAX_PAGEEXEC PAX_RANDMMAP PAX_SEGMEXEC

syn match       gradmRoleFlags          /\s[ugslGNARTP]*$/
syn match       gradmSubjectFlags       /\s[TKCAOZotlhpkvdbriasx]*$/
syn match       gradmObjectFlags        /\s[rwcdxahitlZFRWXAIMCDLsfmp]*$/

syn keyword     gradmEnabled            enabled
syn keyword     gradmDisabled           disabled

syn match       gradmIPv4               /\d\{1,3}\.\d\{1,3}\.\d\{1,3}\.\d\{1,3}/
syn match       gradmNetMask            /\/\d\+/
syn match       gradmPort               /:\d\+/

hi def link     gradmLinuxCap           Type
hi def link     gradmPaxFlags           Type
hi def link     gradmComment            Comment
hi def link     gradmEnabled            Constant
hi def link     gradmDisabled           Constant
hi def link     gradmIPv4               Constant
hi def link     gradmNetMask            Constant
hi def link     gradmPort               String
hi def link     gradmObjectFlags        Constant
hi def link     gradmSubjectFlags       Constant
hi def link     gradmRoleFlags          Constant
hi def link     gradmSocket             Statement
hi def link     gradmRole               Statement
hi def link     gradmSubject            Statement
hi def link     gradmRoleAllowIP        Statement
hi def link     gradmStatement          Statement
hi def link     gradmSocketType         Type
hi def link     gradmUserTransition     Statement
hi def link     gradmGroupTransition    Statement
hi def link     gradmDefined            String

