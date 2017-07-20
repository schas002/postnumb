#!/usr/bin/env ruby

program = ARGF.read
stack = []

program.chomp.each_char do |c|
	case c
	when ?i
		stack << STDIN.gets.chomp.to_i
	when ?o
		puts stack.pop.to_s
	when ?0
		stack << 0
	when ?1
		stack << 1
	when ?u
		stack << stack.pop + 1
	when ?d
		stack << stack.pop - 1
	when ?D
		stack << stack.pop * 2
	when ?H
		stack << (stack.pop / 2).floor
	when ?S
		stack << stack.pop ** 2
	when ?P
		stack << (stack.pop ^ 1)
	when ?_
		stack.pop
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
	end
end
