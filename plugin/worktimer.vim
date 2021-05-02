" Vim global plugin for correcting typing mistakes
" Last Change:  2021/04/21
" Maintainer:   Mr-peipei <wushumenmenmen2@gmail.com>
" License:      This file is placed in the public domain.

"set a default timer
let dict = {'count': 30,
            \'savecount': 0,
            \'timecount': '',
            \'word': 'You work too macth, Take a break!',
            \'timerid': 0,
            \'countdown': function("worktimer#countdown"),
            \'starttimer': function("worktimer#starttimer"),
            \'pausetimer': function("worktimer#pausetimer"),
            \'stoptimer': function("worktimer#stoptimer"),
            \'savetimer': function("worktimer#savetimer"),
            \'changetimer': function("worktimer#changetimer"),
            \'changeword': function("worktimer#changeword")}


command! TimerStart 
            \call dict.savetimer()
            \|call dict.starttimer()
command! TimerPause call dict.pausetimer()
command! TimerStop call dict.stoptimer()
command! -nargs=1 TimerChange call dict.changetimer(<f-args>)
command! -nargs=1 TimerWordChange call dict.changeword(<f-args>)

