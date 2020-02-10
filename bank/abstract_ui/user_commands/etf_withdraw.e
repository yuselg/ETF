note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_WITHDRAW
inherit 
	ETF_WITHDRAW_INTERFACE
create
	make
feature -- command 
	withdraw(a_id: STRING ; a_value: VALUE)
		require else 
			withdraw_precond(a_id, a_value)
    	do
			-- perform some update on the model state
			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
