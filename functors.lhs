The theory stuff
----------------

Functor is a type class. Very much like Eq, Ord, Show, ...
It requires a type constructor that takes *one* parameter
>class  Functor    f   where
>     fmap         ::   (a -> b) -> f a -> f b


A functor example:
Lists

> map :: (a -> b) -> [a] -> [b]
> instance Functor [] where
>   fmap = map

Further examples (select one)

Maybe
-----
> data Maybe x = Just x | Nothing

> instance Functor Maybe where
>   fmap f (Just x) = Just (f x)
>   fmap f Nothing = Nothing


Trees
-----
> data Tree x = Empty | Node x (Tree x) (Tree x)

> instance Functor Tree where
>   fmap f Empty = Empty
>   fmap f (Node x left right) = Node (f x) (fmap f left) (fmap f right)



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


