-module(geometry).
-compile(export_all).

%% area
area({square, Side}) 
    -> Side * Side;
area({rectangle, Height, Width})
    -> Height * Width;
area({circle, Radius})
    -> math:pi() * Radius * Radius.


%% perimeter
perimeter({square, Side})
    -> 4 * Side;
perimeter({rectangle, Height, Width})
    -> 2 * (Height + Width);
perimeter({circle, Radius})
    -> math:pi() * Radius * 2.
 