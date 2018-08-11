" Custom cpp definitions
syn keyword cppDefine	class def nextgroup=cppFunction skipwhite

syn match cppFName /\w\+\s*(/me=e-1,he=e-1

" Custom highlighting
if version >= 508 || !exists("did_cpp_syntax_inits")
  if version < 508
    let did_cpp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  " Custom highlight links
  HiLink cppDefine	  	Define
  HiLink cppType	  	Define
  HiLink cppAccess		Keyword

  HiLink cppFName		FName
  HiLink cppFCallKeyword	FCallKeyword

  delcommand HiLink
endif


let b:current_syntax = "cpp"