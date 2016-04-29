#include "building.h"

building::building(int cap, int res)
    :_index(0),_currentCap(0),_cap(cap),_resource(res)//_image(image)
{}
 int cap(int player, int strength)
 {
     int ret = 0;
     if(_index == 0 || _index == player)//not owned
         _currentCap += strength;
     else //owned by enemy
         _currentCap -= strength;


     if(_currentCap < 0)
     {//went from enemy owned to current player owned
         _index = player;
         _currentCap = -1 * _currentCap;
     }

     if(_currentCap == _cap)
         ret = _resource;

     return ret;
 }
building::~building()
{}
