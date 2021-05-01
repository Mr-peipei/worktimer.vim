
"set a default timer
let dict = {'count': 100,
            \'savecount': 0,
            \'word': 'you work too macth, take a break'}

"Timer Start
function! dict.countdown(timer) abort
  let self.count -= 1
  let seconds = '0' . self.count%60
  let minutes = '0' . self.count/60
  let hours = '0' . self.count/3600
  if self.count && self.count>0
    echo hours[-2:] . ":" . minutes[-2:] . ":" . seconds[-2:]
  elseif self.count <=0
    echo self.word
    call timer_stop(a:timer)
    let self.count = self.savecount
    " call dict.resettimer()
  endif
endfunction

function! dict.savetimer() abort
    let self.savecount = self.count
endfunction

" function! dict.resettimer() abort
"     let self.count = self.savecount
"     echo self.count . 'count' . self.savecount
"     sleep
" endfunction

"Change a Timer Second
function! dict.changetimer(time) abort
    let self.count = a:time
    echo 'Change timer count: ' . self.count . ' seconds'
endfunction

"Change a Word that timer finished
function! dict.changeword(word) abort
    let self.word = a:word
    echo 'Change word: ' . self.word
endfunction



command! TimerStart 
            \ call dict.savetimer()
            \| call timer_start(100, dict.countdown, {'repeat': -1})
            " \| call dict.resettimer()
command! -nargs=1 SetTimer call dict.changetimer(str2nr(<f-args>,10))
command! -nargs=1 SetWord call dict.changeword(<f-args>)
