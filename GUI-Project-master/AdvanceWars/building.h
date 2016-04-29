#ifndef BUILDING_H
#define BUILDING_H

#include <QImage>
#include <QObject>
#include <QDebug>

class building
{
public:
    building(int cap, int res);

    //return resources if the player caps the building
    int cap(int, int);//player index, strength

    ~building();
private:
    //which player the building belongs to
    //default to 0
    int _index;
    //how much cap strength needed to own building
    int _currentCap;
    int _cap;
    //how much resorces it distributes after owning
    int _resource;
    //QImage _image;
};
#endif BUILDING_H
