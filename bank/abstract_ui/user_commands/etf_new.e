note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_NEW
inherit
	ETF_NEW_INTERFACE
create
	make
feature -- command
	new(a_id: STRING)
		require else
			new_precond(a_id)
		local
			id: ID
    	do
			-- perform some update on the model state
			model.default_update
			create id.make (a_id)
			if not model.has(id) then
				model.new (a_id)
			else
				-- provide a message
			end

			-- always include the following
			etf_cmd_container.on_change.notify ([Current])
    	end

end
