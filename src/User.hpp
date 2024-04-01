#ifndef _User_HPP_
#define _User_HPP_

#include <iostream>

class User
{
private:

    std::string name;
    static int count;
    int userId;
public:
    User(std::string Name);
    int GetId();
    std::string GetName();
    ~User();
};

#endif