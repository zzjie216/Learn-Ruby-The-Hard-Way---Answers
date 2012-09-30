# This script is hard coded to do the claim calculations. I'll make it better and more
# interactive as I learn more programming. The ideal goal being that it acts as a sanity
# check and pulls its own data from places. That would be just sooo cool.

# Function to calculate the claim amount

def claim_calculations(expenditure, loss_or_profit, rate_of_enhancement, rate_of_surrender)
	
	claim_amount = (expenditure * rate_of_enhancement) + expenditure
	unrelieved_loss = loss_or_profit - claim_amount
	
	credit = 0
		
	if unrelieved_loss < 0
		if claim_amount < unrelieved_loss
			credit = claim_amount * rate_of_surrender
		else claim_amount > unrelieved_loss
			credit = unrelieved_loss * rate_of_surrender
		end
	end
	
	puts "The tax credit amount is £#{credit}"
	
end

def rates(month_number)
	months_above_cutoff = month_number - 3
	months_below_cutoff = 12 - months_above_cutoff
	
	rate_of_enhancement = ( (months_above_cutoff) + (0.75 * months_below_cutoff) )/12
	rate_of_surrender = ( (0.125 * months_above_cutoff) + (0.14 * months_below_cutoff) )/12
	
	return rate_of_enhancement, rate_of_surrender
end

# Establishing a few variables;
puts "Say Daniel what was that R&D expense again?"
rd_expenses = gets.to_i

puts "and the FY month number?"
fy_month_number = gets.to_i

puts "What does the CT600 say?" 
profit_or_loss = gets.to_i

roe, ros = rates(fy_month_number)

claim_calculations(rd_expenses, profit_or_loss, roe, ros)