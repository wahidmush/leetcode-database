-- 1393. Capital Gain/Loss

select stock_name,
sum(
case when operation = 'sell' then price
else 0 end 
)-sum(
case when operation = 'buy' then price
else 0 end
) as capital_gain_loss
from stocks
group by 1 ;
