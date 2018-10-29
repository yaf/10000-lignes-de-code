```
local function strsplit(delimiter, text)
	if delimiter == "" then
		error("delimiter matches empty string!")
	end
	local list, pos, first, last = {}, 1
	while true do
		first, last = text:find(delimiter, pos, true)
		if first then -- found?
			table.insert(list, text:sub(pos, first - 1))
			pos = last + 1
		else
			table.insert(list, text:sub(pos))
			break
		end
	end
	return list
end
M.private.strsplit = strsplit
```

## statements
### keyword:
`local` `function` `if...then..[else]...end` `while...do...end` `return` `break` `private`

### operators/symbols:
`==` `.` `=` `,` `.` `:` `+` `-` `()` `--`

Éléments syntaxiques du langage qui permettent d'effectuer une action détérminé par
l'interpréteur ou le compilateur, selon qu'il s'agisse d'un langage scripté ou compilé.
Il peut s'agir d'un nom ou d'un symbole que l'on applique à 0 ou plusieurs opérandes.

Ces opérandes peuvent être des valeurs, des variables ou des expressions composées).

J'ai regroupé les opérateurs et les keywords dans la même catégorie car leur utilisation
et syntaxes sont similaires quand bien même, leurs usages peuvent varier grandement et ne
pas servir, du tout, le même but.

Exemple de ce que j'entend par là : un `+` permet de réduire deux operandes à un seul en
appliquant une addition tandis qu'un `if` permet, en fonction d'un opérande booléen de
décider d'éxecuter un set d'opérandes plutôt qu'un autre.

Peut-être pouvons-nous parler de compound statement pour les (`if`/`while`)... ? ;D

#### Exemple `+`:
```
operand operator operand

3 + 2
```


#### Exemple `while...do...end`:
```
operator operatand operator
  operand
  ...
  operand
operator

while operand_1 do
  operand_2
  ...
  operand_n
end
```


## functions/callable expressions/routines/methods:
`strsplit` `error` `find` `insert` `sub`

Ces expressions agissent comme un opérateur mais à leur différence, ils ne sont pas
définies dans la grammaire du langages et ne sont donc pas des mots réservés.


## constants/values:
`true` `""` `"delimiter matches empty string!"` `{}` `1`

Ces noms, au moment de l'éxécution du programme, représentent un état de la mémoire
invariable. Seules les opérations de lectures sont autorisés.


## variables:
`delimiter` `text` `list` `pos` `first` `last` `table` `M`

Ces noms représentent aussi un état variable de la mémoire. Les actions d'écritures sont
autorisés autant que les actions de lectures.
