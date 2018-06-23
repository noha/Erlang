private
logError: err in: request  by: proc
	 Transcript show: ('Server {1} request {2} \ caused exception {3}\' format: {proc . request . err}) withCRs.