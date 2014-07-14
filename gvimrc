
""""
"" Janus Defaults
if filereadable(expand("~/.gvimrc.before"))
  source ~/.gvimrc.before
endif

" CtrlP OS-X Menu remapping
if janus#is_plugin_enabled('ctrlp') && has("gui_macvim")
  macmenu &File.New\ Tab key=<D-S-t>
endif

if filereadable(expand("~/.gvimrc.after"))
  source ~/.gvimrc.after
endif

""""

" Disable print shortcut in macvim
" Cmd-p should be CtrlP not fucking print
macm File.Print       key=<nop>

 
