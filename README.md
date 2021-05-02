# worktimer.vim


![Support Vim 8.1.2269 or above](https://img.shields.io/badge/support-Vim%208.1.2269%20or%20above-yellowgreen.svg)
[![vim](https://github.com/lambdalisue/fern.vim/workflows/vim/badge.svg)](https://github.com/lambdalisue/fern.vim/actions?query=workflow%3Avim)
![Free-CountDown-Timer-1200x505](https://user-images.githubusercontent.com/54967427/116810807-c4273700-ab80-11eb-8729-728b136bc48a.png)
## Cencept
- Supports vim
- You Can Use timer in your vim preference

## Installation
If you use vim plug, write follow the command in vimrc
```
Plug 'Mr-peipei/worktimer.vim',{ 'branch': 'main' }
```
and use `:PlugInstall` commnad

## Usage

### Command  
Start Timer by:
```vim
:TimerStart
```
![スクリーンショット 2021-05-02 19 59 34](https://user-images.githubusercontent.com/54967427/116810860-094b6900-ab81-11eb-8ffb-5762aca6949c.png)

Pause Timer by:
```vim
:TimerPause
```

Stop Timer by:
```vim
:TimerStop
```

Change Timer count by:
```vim
:TimerChange
```

Change word when timer finished by:
```vim
:TimerWordChange
```
default message is "You work too match, take a break!"  
![スクリーンショット 2021-05-02 19 59 40](https://user-images.githubusercontent.com/54967427/116810855-06e90f00-ab81-11eb-8f69-c14411bb14ad.png)

### key mappings  
There is no mapping in default settings.  
If you want to map command, add bellow command in your ~/.vimrc  
(sample)
```vim
nmap <Leader>ts :TimerStart<CR>
```
