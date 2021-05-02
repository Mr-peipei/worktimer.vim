# worktimer.vim


![Support Vim 8.1.2269 or above](https://img.shields.io/badge/support-Vim%208.1.2269%20or%20above-yellowgreen.svg)
[![vim](https://github.com/lambdalisue/fern.vim/workflows/vim/badge.svg)](https://github.com/lambdalisue/fern.vim/actions?query=workflow%3Avim)

## Cencept
- Supports vim
- You Can Use timer in your vim preference

## Installation
If you use vim plug, write follow the command in vimrc
```
Plug 'Mr-peipei/worktimer.vim',{ 'branch': 'main' }
```
and use `:PlugInstall` commnad

If you use neobundle
```
NeoBundle 'Mr-peipei/session.vim'
```

If you use dein.vim
```
call dein#add('Mr-peipei/session.vim')
```


## Usage

###Command
Start Timer by:
```vim
:TimerStart
```

Pause Timer by:
```vim
:TimerPause
```

Stop Timer by:
```vim
:TimerStop
```

Change Timer count by:
```
:TimerChange
```

Change word when timer finished by:
```
:TimerWordChange
```

###key mappings
There is no mapping in default settings.
If you want to map command, add bellow command in your ~/.vimrc
```
nmap <Space>bc :ChromeReloadStart<CR>
```
