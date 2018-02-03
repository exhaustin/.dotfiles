" Custom python3 definitions.
syn keyword pythonSelf  self
syn keyword pythonNumber  False, True, None
syn keyword pythonDefinition	class def nextgroup=pythonFunction skipwhite

if version >= 508 || !exists("did_python_syn_inits")
  if version <= 508
    let did_python_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  " Custom highlight links.
  HiLink pythonSelf   		pythonSelf
  HiLink pythonDefinition  	pythonDefinition
  HiLink pythonBuiltin		pythonBuiltin

  delcommand HiLink
endif

let b:current_syntax = "python"
