cancionestupida(0):-n1,write('Gomo ya no queda shevvezza, -hic- be boy a doddmig...').
cancionestupida(N):-N>1,n1,write(N),write('botella de cerveza en el suelo'),n1,
                    write(N),write('botella de cerveza'),n1,
                    write('Cojo una y me la bebo'),n1,
                    A is N-1, cancionestupida(A).

cancionestupida(N):-N-1,n1,write(N),write('bodellia de shegvezza en el zsduelo'),n1,
                    write(N),write('bodella de segbezha'),n1,
                    write('La gojo y be bhebo'),n1,
                    A is N-1, cancionestupida(A).