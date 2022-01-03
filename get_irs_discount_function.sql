CREATE OR REPLACE FUNCTION get_isr_discount(month_salary IN FLOAT)
RETURN FLOAT
IS
    DISCOUNT FLOAT;
BEGIN
      IF(month_salary < 34685) THEN
          DISCOUNT := 0.0;
      ELSIF(month_salary < 52028) THEN
          DISCOUNT := (month_salary-34685)*0.15; 
      ELSIF(month_salary < 72260) THEN
          DISCOUNT := 2601.33 + (month_salary - 52028) * 0.20; 
      ELSE
          DISCOUNT := 6648 + (month_salary - 72260) * 0.25;
          
      END IF;
    
      RETURN DISCOUNT;

END;
/