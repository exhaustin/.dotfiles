" Custom python3 definitions.
syn keyword pythonSelf  self
syn keyword pythonNumber  None False True
syn keyword pythonDefine	class def nextgroup=pythonFunction skipwhite

"syn region pythonFCall start='[[:alpha:]_]\i*\s*(' end=')' contains=pythonFCall,pythonFCallKeyword
"syn match pythonFCallKeyword /\i*\ze\s*=[^=]/ contained
syn match pythonFName /\w\+\s*(/me=e-1,he=e-1

syn region Comment start=/"""/ end=/"""/
syn match pythonDecorator "@" display nextgroup=pythonFunction

syn match pythonBytesEscape       +\\[abfnrtv'"\\]+ display contained
syn match pythonBytesEscape       "\\\o\o\=\o\=" display contained
syn match pythonBytesEscapeError  "\\\o\{,2}[89]" display contained
syn match pythonBytesEscape       "\\x\x\{2}" display contained
syn match pythonBytesEscapeError  "\\x\x\=\X" display contained
syn match pythonBytesEscape       "\\$"

syn match pythonUniEscape         "\\u\x\{4}" display contained
syn match pythonUniEscapeError    "\\u\x\{,3}\X" display contained
syn match pythonUniEscape         "\\U\x\{8}" display contained
syn match pythonUniEscapeError    "\\U\x\{,7}\X" display contained
syn match pythonUniEscape         "\\N{[A-Z ]\+}" display contained
syn match pythonUniEscapeError    "\\N{[^A-Z ]\+}" display contained

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

  HiLink pythonFName		FName
  HiLink pythonFCallKeyword	FCallKeyword

  HiLink pythonBytesError         Error
  HiLink pythonBytesEscape        pythonEscape
  HiLink pythonBytesEscapeError   Error
  HiLink pythonUniError         Error
  HiLink pythonUniEscape        pythonEscape
  HiLink pythonUniEscapeError   Error

  HiLink pythonDecorator	Define

  delcommand HiLink
endif

let b:current_syntax = "python"
