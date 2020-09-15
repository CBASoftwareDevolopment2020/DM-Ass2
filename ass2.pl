subcategory(bear,mammal).
subcategory(tiger,mammal).
subcategory(whale,mammal).
subcategory(ostrich,bird).
subcategory(peacock,bird).
subcategory(eagle,bird).
subcategory(salmon,fish).
subcategory(goldfish,fish).
subcategory(guppy,fish).
subcategory(turtle,reptile).
subcategory(crocodil,reptile).
subcategory(snake,reptile).
subcategory(frog,amphibian).
subcategory(toad,amphibian).
subcategory(newt,amphibian).
subcategory(ant,threelegs).
subcategory(cockroch,threelegs).
subcategory(ladybug,threelegs).
subcategory(scorpion,fourlegs).
subcategory(spider,fourlegs).
subcategory(millipede,fourlegs).
subcategory(earthworm,wormlike).
subcategory(leech,wormlike).
subcategory(fluke-worm,notwormlike).
subcategory(fluke-tapeworm,notwormlike).

subcategory(mammal,warm).
subcategory(bird,warm).
subcategory(fish,cold).
subcategory(reptile,cold).
subcategory(amphibian,cold).
subcategory(threelegs,jointlegs).
subcategory(fourlegs,jointlegs).
subcategory(wormlike,nolegs).
subcategory(notwormlike,nolegs).

subcategory(warm,vertebrates).
subcategory(cold,vertebrates).
subcategory(jointlegs,invertebrates).
subcategory(nolegs,invertebrates).

%subcategory(vertebrates,animal).
%subcategory(invertebrates,animal).

samesubcategory(X,Y):-
    subcategory(X,S),
    subcategory(Y,S).

sameancestor(X,Y):-
    (   samesubcategory(X,Y) ->
        subcategory(X,S),
        writeln(S)
    ;   (writeln('not found');
        subcategory(X,S),
        subcategory(Y,T),
        %writeln(S), writeln(T),
        sameancestor(S,T))
    ).