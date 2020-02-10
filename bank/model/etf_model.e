note
	description: "A default business model."
	author: "Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_MODEL

inherit
	ANY
		redefine
			out
		end

create {ETF_MODEL_ACCESS}
	make

feature {NONE} -- Initialization
	make
			-- Initialization for `Current'.
		do
			create s.make_empty
			i := 0
			create bank.make_empty
		end

feature -- model attributes
	s : STRING
	i : INTEGER

feature -- model operations
	default_update
			-- Perform update to the model state.
		do
			i := i + 1
		end

	reset
			-- Reset model state.
		do
			make
		end

feature -- new
	bank: FUN[ID, ACCOUNT]

	has(id: ID): BOOLEAN
			-- does `bank` have customer with `id`
		do
			Result := bank.domain.has (id)
		end

	new(id: ID)
		require
			not has (id)
		local
			account: ACCOUNT
		do
			create account.make (id)
			bank.extend ([id, account])
		end

feature -- queries
	out : STRING
		do
			create Result.make_from_string ("  ")
			Result.append ("System State: default model state ")
			Result.append ("(")
			Result.append (i.out)
			Result.append (")")
			Result.append ("%N  ")
			Result.append (bank.out)
		end

end




