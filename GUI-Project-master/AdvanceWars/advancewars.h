#include "building.h"
#include "grid.h"
#include "unit.h"

#ifndef ADVANCEWARS_H
#define ADVANCEWARS_H

class AdvanceWars
{
public:
    AdvanceWars();

    void setBoardSize(int,int);
    //start game()
    //set board size from user settings and random building placement mirrored
    //cycle
    //player turn
        //show banner on top who's turn it is
        //if user clicks on unit
            //show available movement
            //check ending position after each unit
                //(1) if next to enemy unit allow attack
                //(2) if on top of a building let them it
             //disable unit actions


        //end turn on end turn button
    //check if there remains units per player cycle if yes


    ~AdvanceWars();
private:
    grid _board;
    //coordinates to player spawn, can be pulled out
    int _player1[2];
    int _player2[2];
};

#endif // ADVANCEWARS_H
