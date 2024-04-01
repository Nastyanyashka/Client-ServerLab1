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
            response["error"] = "Not Found";
            resp->SetBody(response.dump());
            resp->content_type = APPLICATION_JSON;
            return 404;
        }

        resp->SetBody(response.dump());
        resp->content_type = APPLICATION_JSON;

        return 200;
    });

    router.GET("/users", [](HttpRequest *req, HttpResponse *resp)
    {
        nlohmann::json response = nlohmann::json::array();
        if(users.size() == 0)
        {
            resp->SetBody("");
              resp->content_type = APPLICATION_JSON;
               return 200;
        }
        else{
        for(unsigned int i=0 ; i<users.size(); i++)
        {
            std::unordered_map<std::string, std::string> m;
            m["id"] = std::to_string(users[i].GetId());
            m["name"] = users[i].GetName();
            response.push_back(m);
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
                response["id"] = std::to_string(users[i].GetId());
                response["name"] = users[i].GetName();
                users.erase(users.begin() + i);

                 resp->SetBody(response.dump());
                 resp->content_type = APPLICATION_JSON;

                 return 200;
            } 
        }

        resp->SetBody("Not Found");
        resp->content_type = APPLICATION_JSON;

        return 404;
    });

    router.POST("/user", [](HttpRequest *req, HttpResponse *resp)
    {
        nlohmann::json request;
        nlohmann::json response;

        try
        {
            request = nlohmann::json::parse(req->body);
              std::string name = request["name"];
         User user(name);
         users.push_back(user);

        }
        catch(const std::exception& e)
        {
            response["error"] = "Invalid JSON";
            resp->SetBody(response.dump());
            resp->content_type = APPLICATION_JSON;
            return 400;
        }
       
        resp->SetBody(request.dump());
        resp->content_type = APPLICATION_JSON;

        return 200;
    });

}