require_relative 'bank_account'

RSpec.describe BankAccount do

	it 'Has a a method for retrieving the checking account balance' do
		acct = BankAccount.new.deposit_checking(15)
		expect{ acct.balance_checking }.to output("Checking Balance: $15\n").to_stdout
	end

    it 'Has a method that retrieves the total account balance' do 
	    acct = BankAccount.new.deposit_checking(15) 
	    acct.deposit_savings(30)
	    expect { acct.show_total }.to output("Total = $45  (savings: $30; checking: $15)\n").to_stdout
    end

    it 'Has a method that allows the user to withdraw cash' do 
    	acct = BankAccount.new.deposit_checking(80).deposit_savings(45)
    	acct.withdraw_checking(25)
    	expect { acct.balance_checking }.to output("Checking Balance: $55\n").to_stdout
    	acct.withdraw_savings(10)
    	expect { acct.balance_savings }.to output("Savings Balance: $35\n").to_stdout
    end

    it 'Raises an error if a user tries to withdraw more money than they have in the account' do 
		acct = BankAccount.new.deposit_checking(20).deposit_savings(40)
		expect{ acct.withdraw_savings(95) }.to output("Error. Insufficient funds to cover $95 withdrawl.\n").to_stdout
	end
	
	it 'Raises an error when the user tries to print out how many bank accounts there are' do  	
		acct = BankAccount.new.deposit_checking(20).deposit_savings(40)
		expect { acct.num_of_accounts }.to raise_error StandardError
  	end

  	it 'Raises an error when the user tries to set the interest rate' do 
		acct = BankAccount.new.deposit_checking(20).deposit_savings(40)
  		expect { acct.rate = 0.05 }.to raise_error StandardError
  	end

  	it 'Raises an error when the user tries to set any attribute' do 
		acct = BankAccount.new.deposit_checking(20).deposit_savings(40)
  		expect { acct.savings = 50 }.to raise_error StandardError
  		expect { acct.checking = 50 }.to raise_error StandardError
  		expect { acct.num_of_accounts = 5 }.to raise_error StandardError  		
  	end

end