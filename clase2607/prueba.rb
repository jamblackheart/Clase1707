string = "Mi número de teléfono es (ABC-123) 555-1234."  
num_expr = /[A-Z]{3}-[0-9]{3}/ # expresión regular 
m = num_expr.match(string)  
puts m