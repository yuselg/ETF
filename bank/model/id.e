note
	description: "[
		Immutable integer identities 
		starting at 1
		]"
	author: "JSO"
	date: "2020-02-09"

class
	ID
inherit
	DEBUG_OUTPUT
		redefine out end

create
	make

convert -- see usage at the end of the class
    make ({STRING}),
    id: {IMMUTABLE_STRING_8}

feature {NONE} -- private constructor

	make(a_id: STRING)
			-- create a positive identity `a_id`
		require
			is_positive:
				a_id.count >= 1
		do
			id := a_id
		ensure
			id ~ a_id
		end
feature
	id: IMMUTABLE_STRING_8

feature -- out
	out: STRING
		do
			Result := id.out
		end

	debug_output: STRING
		do
			Result := out
		end
invariant
	positive: id.count >= 1
note
	usage: "[
		id: ID
		id := "K234"
		-- due to convert keyword
		create joe.make (5)
	]"
end
