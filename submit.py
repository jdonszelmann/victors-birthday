#!/usr/bin/env python3
import os
from subprocess import run
import sys


def get_current_year() -> int:
    try:
        return int(os.environ["YEAR"].lstrip("year"))
    except KeyError:
        print("WARNING: no $YEAR envvar set")
        return 1
    except ValueError:
        print(f"WARNING: couldn't parse $YEAR value: {os.environ['YEAR'].lstrip('year')}")
        return 1


def get_next_year() -> int:
    return get_current_year() + 1


def get_next_year_username(year):
    return f"year{year}"


def try_switch(user: str, password: str):
    run(f"expect -c 'log_user 0; spawn su - {user} -c \"bash -c \\\"clear; /bin/zsh\\\"\"; expect \"Password: \"; send \"{password}\n\"; log_user 1; interact'", shell=True)


def main():
    next_year = get_next_year()
    user = get_next_year_username(next_year)

    pw = ""
    if len(sys.argv) > 1:
        if "--help" in sys.argv or "-h" in sys.argv:
            print("helps you go to the next year's puzzle. Run interactive `submit`, or `submit <password>`")
            exit(0)
        else:
            pw = sys.argv[1]
            print(f"using {pw} as password")

    if pw == "":
        print(f"please give the password to advance to year {next_year}:")
        pw = input(">>>")

    try_switch(user, pw)
    exit(0)


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        exit(1)



