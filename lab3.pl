pares_rango(Inicio, Fin) :-  % Esta regla se ejecuta cuando no hay un rango válido
    Inicio > Fin,
    write('"No hay rango"'), nl,
    fail.

pares_rango(Inicio, Fin) :-
    Inicio =< Fin,
    Inicio mod 2 =:= 0,
    write(Inicio), nl,
    Siguiente is Inicio + 2,
    pares_rango(Siguiente, Fin).

pares_rango(_, _) :-  % Esta regla se ejecuta cuando no hay más números pares en el rango
    !.


mediana(Lista) :-
    length(Lista, Len),
    Len > 0,
    sort(Lista, ListaOrdenada),
    elementoMedio(ListaOrdenada, Len, Mediana),
    write('La mediana es: '), write(Mediana), write('.'), nl.

elementoMedio(Lista, Len, Mediana) :-
    Len mod 2 =:= 0,
    N1 is Len // 2,
    N2 is N1 + 1,
    nth1(N1, Lista, Elem1),
    nth1(N2, Lista, Elem2),
    Mediana is (Elem1 + Elem2) / 2.

elementoMedio(Lista, Len, Mediana) :-
    N is (Len + 1) // 2,
    nth1(N, Lista, Mediana).



