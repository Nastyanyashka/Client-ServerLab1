#include "User.hpp"

int User::GetId()
{
    return this->userId;
}
std::string  User::GetName()
{
   return this->name;
}

User::User(int Id, std::string Name)
{
    userId = Id;
    name = Name;
}

User::~User()
{
}
