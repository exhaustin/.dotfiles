" Custom python3 definitions.
syn keyword pythonSelf  self
syn keyword pythonNumber  None False True
syn keyword pythonDefine	class def nextgroup=pythonFunction skipwhite

"syn region pythonFCall start='[[:alpha:]_]\i*\s*(' end=')' contains=pythonFCall,pythonFCallKeyword
"syn match pythonFCallKeyword /\i*\ze\s*=[^=]/ contained
syn match pythonFName /\w\+\s*(/me=e-1,he=e-1

syn region Comment start=/"""/ end=/"""/
syn match pythonDecorator "@" display nextgroup=pythonFunction

if version >= 508 || !exists("did_python_syn_inits")
  if version <= 508
    let did_python_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  " Custom highlight links.
  HiLink pythonSelf   		pythonSelf
  HiLink pythonNumber	  	Number
  HiLink pythonDefine	  	Define
  HiLink pythonBuiltin		pythonBuiltin

  HiLink pythonFName		pythonFName
  HiLink pythonFCallKeyword	pythonFCallKeyword

  HiLink pythonDecorator	Define

  delcommand HiLink
endif

let b:current_syntax = "python"
