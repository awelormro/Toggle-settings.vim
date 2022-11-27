nnoremap <leader>tve :ToggleVirtualedit<CR>
nnoremap <leader>tcl :ToggleConcealLevel<CR>
  
" Function to toggle Virtual edit environment properly
  
function! ToggleVirtualedit()
  if &virtualedit == ""
    setlocal virtualedit=all
  else  
    setlocal virtualedit=""
  endif  
endfunction 
 
 
" Function to toggle conceallevel in case of required
function! ToggleConcealLevel()
    if &conceallevel == 0
        setlocal conceallevel=2
    else
        setlocal conceallevel=0
    endif
endfunction

command! Toggleconceal call ToggleConcealLevel()
command! ToggleVirtualedit call ToggleVirtualedit()
