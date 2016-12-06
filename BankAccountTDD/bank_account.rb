class BankAccount
	@@num_of_accounts=0

	def initialize
		new_account
		@savings=0
		@checking=0
		@@num_of_accounts +=1
	end	
	def account_number
		puts ("Account Number: #{@account_num}")
	end
	def balance_checking
		puts ("Checking Balance: $#{@checking}")
	end
	def balance_savings
		puts ("Savings Balance: $#{@savings}")
	end
	def deposit_checking(val)
		@checking += val
		self
	end
	def deposit_savings(val)
		@savings += val
		self
	end
	def withdraw_checking(val)
		if val > @checking
			puts("Error. Insufficient funds to cover $#{val} withdrawl.")
			return self
		else
			@checking -= val
			self
		end		
	end
	def withdraw_savings(val)
		if val > @savings
			puts("Error. Insufficient funds to cover $#{val} withdrawl.")
			return self
		else
			@savings -= val
			self
		end		
	end
	def show_total
		puts("Total = $#{@checking+@savings}  (savings: $#{@savings}; checking: $#{@checking})")
		self
	end
	def account_information
		#displays the users account number, total money, checking account balance, saving account balance and (private)interest rate
		puts("\nAccount Information Summary:")
		account_number
		show_total
		balance_checking
		balance_savings
		interest_rate	
	end
		
	def get_num_of_accounts #this getter included for debug check 
		puts ("Number of accounts = #{@@num_of_accounts}")
	end

	private
	def new_account
		@account_num=rand(1000000)
	end
	def interest_rate
		@rate = 0.03
		print("Interest rate is currently #{@rate*100}%\n")
	end
end

acct = BankAccount.new
# # # acct.account_number
# # # acct.balance_checking
# # # acct.balance_savings
# # # acct.account_information
# # # acct.show_total
# # # acct.withdraw_savings(10)
# acct.deposit_checking(50)
# acct.deposit_savings(25)
# # acct.show_total
# # acct.withdraw_savings(10)
# # acct.show_total
# # acct.withdraw_checking(200)
# # acct.account_information

# acct2 = BankAccount.new
# puts acct.get_num_of_accounts

# puts acct.num_of_accounts
