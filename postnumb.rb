#!/usr/bin/env ruby

program = ARGF.read
stack = []

program.chomp.each_char do |c|
	case c
	when ?i then stack << STDIN.gets.chomp.to_i
	when ?o then puts stack.pop.to_s
	when ?0 then stack << 0
	when ?1 then stack << 1
	when ?u then stack << stack.pop + 1
	when ?d then stack << stack.pop - 1
	when ?D then stack << stack.pop * 2
	when ?H then stack << (stack.pop / 2).floor
	when ?S then stack << stack.pop ** 2
	when ?P then stack << (stack.pop ^ 1)
	when ?_ then stack.pop
	when ?$
		a = stack.pop
		stack << a
		stack << a
	when ?%
		a = stack.pop
		b = stack.pop
		stack << a
		stack << b
	when ?@
		stack.unshift(stack.pop)
	when ?^
		a = stack.pop
		b = stack.pop
		stack << b
		stack << a
		stack << b
	when ?+ then stack << stack.pop + stack.pop
	when ?- then stack << stack.pop - stack.pop
	when ?* then stack << stack.pop * stack.pop
	when ?/ then stack << (stack.pop / stack.pop).floor
	end
end
