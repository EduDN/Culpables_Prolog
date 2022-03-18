delito(incendio_premeditado).
delito(fraude).
delito(estafa).
delito(traición_a_la_patria).
delito(robo_a_mano_armada).
delito(robo_a_casa_habitacion).
delito(robo_a_transeuntes).
delito(robo_en_transporte_publico).
delito(asesinato).
delito(secustro).
delito(extorsion).

intentado(calteron, traición_a_la_patria).
intentado(martinez, robo_a_mano_armada).
intentado(rodriguez, asesinato).
intentado(sanchez,incendio_premeditado).

demostrado(martinez,robo_a_mano_armada).
demostrado(sanchez, incendio_premeditado).

condenado(X, Y):-
intentado(X, Y),
demostrado(X, Y).

culpable(X,Y):-
condenado(X, Y) ,
delito(Y).

