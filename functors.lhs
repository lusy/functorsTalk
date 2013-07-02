The theory stuff
----------------

Functor is a type class. Very much like Eq, Ord, Show, ...
>class  Functor    f   where
>     fmap         ::   (a -> b) -> f a -> f b


A functor example:
Lists

> map :: (a -> b) -> [a] -> [b]
> instance Functor [] where
>   fmap = map


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


