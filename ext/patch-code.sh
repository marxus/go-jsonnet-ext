sed -i 's/buildBuiltinMap(\[\]builtin{/buildBuiltinMap([]builtin{\&unaryBuiltin{name:"runCmd",function:builtinRunCmd,params:ast.Identifiers{"arr"}},/' builtins.go
