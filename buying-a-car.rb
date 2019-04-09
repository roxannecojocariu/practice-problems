# Let us begin with an example:
#
# A man has a rather old car being worth $2000. He saw a secondhand car being worth $8000. He wants to keep his old car until he can buy the secondhand one.
#
# He thinks he can save $1000 each month but the prices of his old car and of the new one decrease of 1.5 percent per month. Furthermore this percent of loss increases by 0.5 percent at the end of every two months. Our man finds it difficult to make all these calculations.
#
# Can you help him?
#
# How many months will it take him to save up enough money to buy the car he wants, and how much money will he have left over?
#
# Parameters and return of function:
#
# parameter (positive int or float, guaranteed) startPriceOld (Old car price)
# parameter (positive int or float, guaranteed) startPriceNew (New car price)
# parameter (positive int or float, guaranteed) savingperMonth
# parameter (positive float or int, guaranteed) percentLossByMonth
#
# nbMonths(2000, 8000, 1000, 1.5) should return [6, 766] or (6, 766)
# where 6 is the number of months at the end of which he can buy the new car and 766 is the nearest integer to 766.158 (rounding 766.158 gives 766).
#
# Note:
#
# Selling, buying and saving are normally done at end of month. Calculations are processed at the end of each considered month but if, by chance from the start, the value of the old car is bigger than the value of the new one or equal there is no saving to be made, no need to wait so he can at the beginning of the month buy the new car:
#
# nbMonths(12000, 8000, 1000, 1.5) should return [0, 4000]
# nbMonths(8000, 8000, 1000, 1.5) should return [0, 0]
# We don't take care of a deposit of savings in a bank:-)

def nbMonths(startPriceOld, startPriceNew, savingperMonth, percentLossByMonth)
  if startPriceNew < startPriceOld || startPriceNew === startPriceOld
    return [0, startPriceOld - startPriceNew]
  end
  percentLossByMonth = percentLossByMonth.to_f / 100
  month_count = 0
  total = 0
  total_saved = 0
  while total <= startPriceNew
    month_count += 1
    if month_count % 2 == 0
      percentLossByMonth = percentLossByMonth + 0.005
    end
    startPriceNew = (startPriceNew - (startPriceNew * percentLossByMonth))
    startPriceOld = (startPriceOld - (startPriceOld * percentLossByMonth))
    total_saved = savingperMonth * month_count
    total = startPriceOld + total_saved
  end
  return [month_count, (total - startPriceNew).round]
end

nbMonths(2000, 8000, 1000, 1.5)
