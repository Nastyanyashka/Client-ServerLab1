#include "User.hpp"

int User::count = 0;

int User::GetId()
{
    return this->userId;
}
std::string  User::GetName()
{
   return this->name;
}

User::User(std::string Name)
{
    userId = count;
    count++;
    name = Name;
}

User::~User()
{
}
