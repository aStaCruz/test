#include "grid.h"

grid & grid::operator = (const grid & copy)
{
    if(this != &copy)
    {
        _width = copy._width;\
        _height = copy._height;
        _board = copy._board;
    }

    return * this;
}
