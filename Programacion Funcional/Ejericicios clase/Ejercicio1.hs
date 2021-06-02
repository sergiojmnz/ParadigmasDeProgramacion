descuento :: Float-> Float-> Float
descuento precio porcentaje = precio - precio * porcentaje / 100

iva :: Float -> Float -> Float
iva precio porcentaje = precio + precio * porcentaje / 100

precios :: Float -> [Float] -> Float 
precios = descuento

main = do
putStrLn "El descuento es:"
print(descuento 50 5) 
print(iva 50 5)
print(precios (descuento 50 5))
