-- Remove Invalid Ages
Delete From Customers Where age<=0;

-- Replace Null Loyalty Score
Update Customers
Set loyalty_score=0
where loyalty_score is null

-- Remove Invalid Ratings
Delete From Reviews
Where rating not between 1 AND 5;