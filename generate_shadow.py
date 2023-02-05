"""
This file generates a shadow file before the docker runner is even started. It uses
the data in this file to set the passwords for each of the users that are specified.

This script can also be used with the "list" option simply to list all the users in 
the final system since that data is also stored in this script. Some other parts of 
the build process use that.
"""
import crypt
from dataclasses import dataclass
import sys


@dataclass
class User:
    name: str
    pw: str | None


users = [
    User(name="root", pw="VERY_SECURE_ROOT_PW"),
    User(name="year1", pw=None),
    User(name="year2", pw="52.161"),
    User(name="year3", pw="yeet"),
    User(name="year4", pw="yeet"),
    User(name="year5", pw="ferris"),
    User(name="year6", pw="yeet"),
    User(name="year7", pw="yeet"),
    User(name="year8", pw="yeet"),
    User(name="year9", pw="yeet"),
    User(name="year10", pw="woonprotest"),
    User(name="year11", pw="wmkrbt"),
    User(name="year12", pw="yeet"),
    User(name="year13", pw="cantbruteforcethis"),
    User(name="year14", pw="yeet"),
    User(name="year15", pw="yeet"),
    User(name="year16", pw="yeet"),
    User(name="year17", pw="zuid holland"),
    User(name="year18", pw="yeet"),
    User(name="year19", pw="yeet"),
    User(name="year20", pw="yeet"),
    User(name="year21", pw="yeet"),
    User(name="year22", pw="yeet"),
    User(name="year23", pw="yeet"),
    User(name="year24", pw="leiden"),
]

if sys.argv[1] == "generate":
    with open("shadow", "w") as f:
        for user in users:
            pw = ""
            if user.pw is not None:
                pw = crypt.crypt(user.pw, "$6$random_salt")
            print(f"{user.name}:{pw}:14871::::::", file=f)
elif sys.argv[1] == "list":
    for i in users:
        print(i.name)



