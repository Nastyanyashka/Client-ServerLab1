#ifndef _User_HPP_
#define _User_HPP_

#include <iostream>

class User
{
private:

    std::string name;
    int userId;
public:
    User(int Id,std::string Name);
    int GetId();
    std::string GetName();
    ~User();
};

#endif