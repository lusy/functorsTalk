The theory stuff
----------------

>class  Functor    f   where
>     fmap         ::   (a -> b) -> f a -> f b

< fmap id           =  id
< fmap (g . f)      =  fmap g . fmap f

Alpha is a "natural transformation" - a way to map one functor to another
< alpha            ::  F a -> G a


               alpha
         F A ---------> G A
           |            |
           |            |
    fmap f |            | fmap f
           |            |
           v            v
         F B ---------> G B
               alpha


Parametricity
< alpha . fmap f    =  fmap f . alpha


