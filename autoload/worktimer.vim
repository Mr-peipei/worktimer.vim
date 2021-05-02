
"set a default timer
let dict = {'count': 100,
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


"Timer Start
function! worktimer#countdown(timer) dict
  let self.count -= 1
  let seconds = '0' . self.count%60
  let minutes = '0' . self.count/60
  let hours = '0' . self.count/3600
  let self.timecount = hours[-2:] . ":" . minutes[-2:] . ":" . seconds[-2:]
  if self.count && self.count>0
    echo self.timecount
  elseif self.count <=0
    echo self.word
    call timer_stop(a:timer)
    let self.count = self.savecount
  endif
endfunction

"Start timer
function! worktimer#starttimer() dict
    let self.timerid = timer_start(100, self.countdown, {'repeat': -1})
endfunction

"Pause timer
function! worktimer#pausetimer() dict
    call timer_stop(self.timerid)
    echo 'Pouse timer: ' . self.timecount
endfunction

"Stop timer
function! worktimer#stoptimer() dict
    call timer_stop(self.timerid)
    let self.count = self.savecount
    echo 'Stop timer'
endfunction

"save timer count
function! worktimer#savetimer() dict
    let self.savecount = self.count
endfunction

"Change a Timer Second
function! worktimer#changetimer(time) dict
    let self.count = a:time
    echo 'Change timer count: ' . str2nr(self.count,10) . ' seconds'
endfunction

"Change a Word that timer finished
function! worktimer#changeword(word) dict
    let self.word = a:word
    echo 'Change word: ' . self.word
endfunction



command! TimerStart 
            \call dict.savetimer()
            \|call dict.starttimer()
command! PauseTimer call dict.pausetimer()
command! StopTimer call dict.stoptimer()
command! -nargs=1 SetTimer call dict.changetimer(<f-args>)
command! -nargs=1 SetWord call dict.changeword(<f-args>)

