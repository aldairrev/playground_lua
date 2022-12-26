local console = require("lib.console")
local ask = require("lib.ask")

--[[
    Register myself
--]]
local user = {}

console.info("Hello!");
console.success("Welcome to this self register in Lua");
print("I'm going to ask you about some questions...")
print();

console.sleep(1)

user["firstname"] = ask.firstname();
user["lastname"] = ask.lastname();
user["age"] = ask.yearsOld();

print();

console.warning("I'm going to show you your information, please wait...")

console.sleep(3)

print("----------- Data -----------");
console.info("Firstname:");
print(user["firstname"]);
console.info("Lastname");
print(user["lastname"]);
console.info("Age");
print(user["age"]);
print("---------------------------");

console.success("Thank you so much for answer these questions!");
