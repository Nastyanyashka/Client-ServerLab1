#include "Routers.hpp"
#include "User.hpp"
#include <iostream>
#include <sstream>
#include <vector>
#include <algorithm>


std::vector<std::string> split (const std::string &s, char delim) {
    std::vector<std::string> result;
    std::stringstream ss (s);
    std::string item;

    while (getline (ss, item, delim)) {
        result.push_back (item);
    }

    return result;
}

void route::RegisterResources(hv::HttpService &router)
{
    static std::vector<User> users = {};
    router.GET("/user/{userId}", [](HttpRequest *req, HttpResponse *resp)
    {
        std::string path = req->path;
        std::vector<std::string> vector = split(path,'/');
        int id = std::stoi(vector[vector.size()- 1]);
        bool flag = false;
        nlohmann::json response;
        for(unsigned int i=0 ; i<users.size(); i++)
        {
            if(users[i].GetId() == id)
            {
                flag = true;
                 response = 
                 {
                     {"id", std::to_string(users[i].GetId())},
                     {"name", users[i].GetName()}
                 };
            } 
        }

        if(flag == false)
        {
            response["error"] = "Invalid JSON";
            resp->SetBody(response.dump());
            resp->content_type = APPLICATION_JSON;
            return 400;
        }

        resp->SetBody(response.dump());
        resp->content_type = APPLICATION_JSON;

        return 200;
    });

    router.GET("/users", [](HttpRequest *req, HttpResponse *resp)
    {
        nlohmann::json response;
        if(users.size() == 0)
        {
            resp->SetBody("Нету пользователей");
              resp->content_type = APPLICATION_JSON;
               return 200;
        }
        else{
        for(unsigned int i=0 ; i<users.size(); i++)
        {
             response["user" + std::to_string(i)] = "id = " + std::to_string(users[i].GetId()) + " name = " + users[i].GetName();
        }
        }

        
        resp->SetBody(response.dump());
        resp->content_type = APPLICATION_JSON;

        return 200;
    });

   router.Delete("/user/{userId}", [](HttpRequest *req, HttpResponse *resp)
    {
         std::string path = req->path;
        std::vector<std::string> vector = split(path,'/');
        int id = std::stoi(vector[vector.size()- 1]);
        nlohmann::json response;
        for(unsigned int i=0 ; i<users.size(); i++)
        {
            if(users[i].GetId() == id)
            {
                users.erase(users.begin() + i);
                 resp->SetBody("Пользователь удален");
                 resp->content_type = APPLICATION_JSON;

                 return 200;
            } 
        }

        resp->SetBody("Пользователь не найден");
        resp->content_type = APPLICATION_JSON;

        return 200;
    });

    router.POST("/user", [](HttpRequest *req, HttpResponse *resp)
    {
        nlohmann::json request;
        nlohmann::json response;

        try
        {
            request = nlohmann::json::parse(req->body);
        }
        catch(const std::exception& e)
        {
            response["error"] = "Invalid JSON";
            resp->SetBody(response.dump());
            resp->content_type = APPLICATION_JSON;
            return 400;
        }

        // if(request["name"] =="" || request["id"] == "" || std::all_of(request["id"].begin(), request["id"].end(), ::isdigit) == false)
        // {
        //      response["error"] = "Invalid JSON2";
        //     resp->SetBody(response.dump());
        //     resp->content_type = APPLICATION_JSON;
        //     return 400;
        // }

         std::string name = request["name"];
         std::string idString = request["id"];
         int id = std::stoi(idString);
         User user(id,name);
         users.push_back(user);

        resp->SetBody("Пользователь добавлен");
        resp->content_type = APPLICATION_JSON;

        return 200;
    });

}