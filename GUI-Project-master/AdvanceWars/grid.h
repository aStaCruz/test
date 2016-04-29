#ifndef GRID_H
#define GRID_H
#include <QObject>
#include "cell.h"
#include "unit.h"

class grid : public QObject
{
    Q_OBJECT
public:
    grid(int width, int height)
        :QObject(),_width(width), _height(height), _board(new cell * [_width])
    {

       //set up height for board (width already set)
       for(int col = 0; col < _width; ++col)
           _board[col] = new cell[_height];
    }

    //not sure if i want to save unit position in the
    //unit array passed
    void scatterUnits(unit * units)
    {
        //while(units != nullptr)
        //{
            //cell has unit at random x < width and random y < height
            //cell = unit (calls cell's overloaded op)
        //}
    }
    grid & operator = (const grid &);
    int getWidth()
    {return _width;}
    int getHeight()
    {return _height;}
    //void toggleActivePlayer()
    //{

                //if cell owned = false
                //toggle cell to true
                //else toggle to false
    //}

private:
    int _width;
    int _height;
    cell ** _board; //#x#
};

#endif // GRID_H

