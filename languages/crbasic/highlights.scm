; CRBasic Tree-sitter highlighting queries

; Comments
(comment) @comment

; Numbers
(number) @constant.numeric

; Strings
(string) @string

; Boolean literals
(boolean) @constant.builtin.boolean
[
  "TRUE"
  "FALSE"
  "True"
  "False"
  "true"
  "false"
] @constant.builtin.boolean

; Function calls
(user_function_call
  (identifier) @function.call)

; Built-in function calls
(builtin_function_call
  (builtin_function_name) @function.builtin)

; Built-in function names used as identifiers
(identifier
  (builtin_function_name) @function.builtin)


; Variable names
(assignment
  (identifier) @variable)

(variable_declaration
  (identifier) @variable)

; All other identifiers
(identifier) @variable

; Keywords (only actual grammar tokens)
[
  "BeginProg"
  "EndProg"
  "If"
  "Then"
  "Else"
  "ElseIf"
  "EndIf"
  "For"
  "To"
  "Next"
  "Step"
  "While"
  "Wend"
  "Do"
  "Loop"
  "Until"
  "Select"
  "Case"
  "EndSelect"
  "Function"
  "EndFunction"
  "Sub"
  "EndSub"
  "Dim"
  "Public"
  "Const"
  "As"
  "Scan"
  "NextScan"
  "SubScan"
  "NextSubScan"
  "DataTable"
  "EndTable"
  "CallTable"
  "DisplayMenu"
  "EndMenu"
  "SubMenu"
  "EndSubMenu"
  "MenuItem"
  "SlowSequence"
  "EndSequence"
  "ConstTable"
  "EndConstTable"
  "Include"
  "AND"
  "OR"
  "XOR"
  "NOT"
  "MOD"
  "IMP"
  "INTDV"
] @keyword

; Preprocessor directives (only valid tokens)
[
  "#If"
  "#Else"
  "#EndIf"
  "#IfDef"
  "#UnDef"
] @keyword.directive

; Data types
[
  "Boolean"
  "Float"
  "Double"
  "Long"
  "String"
  "FP2"
  "IEEE4"
  "IEEE8"
  "UINT1"
  "UINT2"
  "UINT4"
  "Bool8"
  "NSEC"
] @type

; Operators (only valid tokens from grammar)
[
  "="
  "+"
  "-"
  "*"
  "/"
  "^"
  "<>"
  "<"
  ">"
  "<="
  ">="
  ">>"
  "<<"
  "&"
  "|"
  "*="
  "+="
  "-="
  "/="
  "\\="
  "^="
  "&="
] @operator

; Punctuation
[
  "("
  ")"
  ","
] @punctuation.delimiter