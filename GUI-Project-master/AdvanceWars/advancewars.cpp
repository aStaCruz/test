#include "advancewars.h"

AdvanceWars::AdvanceWars()
    :_board(),_player1({0,0}),_player2({0,0})
{}
void AdvanceWars::setBoardSize(int width, int height)
{
    _board = grid(width, heigth);
}

AdvanceWars::~AdvanceWars(){}
