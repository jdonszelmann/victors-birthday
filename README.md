
# Victor's Birthday


* [Changing the passwords for different user accounts](./generate_shadow.py)
* [Adding packages to be included in the final ISO](./packages.x86_64). These are cached in the docker image that is used to build, so an update to these 
causes the docker image to be rebuilt too. This may take a while since it has to download about 2 Gib of data.
* [Adding packages to be included in the final ISO but not in the dcoker cache](./packages.x86_64.uncached) Adding packages here doesn't trigger a rebuild of the docker
image, though instead they are redownloaded every time the ISO is built which may be worth it in the short term, but maybe not in the long term.
* [Customizing what's in the filesystem of the final ISO](./build_script_in_docker.sh). Note that this script calls a number of subscripts, in each of the year's directories.
    * [install year 1](./01_math/install.sh)
    * [install year 2](./year2/install.sh)
    * [install year 3](./03_router_bmw/install.sh)
    <!-- * [install year 4](./year4/install.sh) -->
    <!-- * [install year 5](./year5/install.sh) -->
    <!-- * [install year 6](./year6/install.sh) -->
    * [install year 7](./07_campus_router/install.sh)
    <!-- * [install year 8](./year8/install.sh) -->
    * [install year 9](./09_vegemite/install.sh)
    * [install year 10](./10_cats/install.sh)
    * [install year 11](./12_tapeworm/install.sh)
    <!-- * [install year 12](./year12/install.sh) -->
    <!-- * [install year 13](./year13/install.sh) -->
    <!-- * [install year 14](./year14/install.sh) -->
    <!-- * [install year 15](./year15/install.sh) -->
    * [install year 16](./16_minecraft/install.sh)
    <!-- * [install year 17](./year17/install.sh) -->
    * [install year 18](./18_yeetjs/install.sh)
    <!-- * [install year 19](./year19/install.sh) -->
    <!-- * [install year 20](./year20/install.sh) -->
    <!-- * [install year 21](./year21/install.sh) -->
    <!-- * [install year 22](./year22/install.sh) -->
    <!-- * [install year 23](./year23/install.sh) -->
    <!-- * [install year 24](./year24/install.sh) -->
* [Grub boot options](./grub.cfg)
* [Docker image used for caching, and installing aur packages into a custom repo](./Dockerfile)
* [Script used to submit passwords and advance to the next day in the final ISO](./submit.py)


# Ideas

52.15° N, 4.49° E

24 (?) layers
Start simple

* rusttracer?
* disco elyseum
* doctor who
* php
* horse
* gray (phys block)

hints along the way to leiden:

* train schedule
* math outcome is 52.2

option hints


1. simple math, answers: 52.2 DONE
2. klok
3. router encrypted (maybe)
4. rusttracer DONE
5. vegemite DONE
6. aardenhout (warning: fake) 
7. router on campus: 
8. george: physical board game
9. university challenge
10. naming of cats
11. wordle / scrable
12. laura: gray (phys block) DONE
13. laura: spelling mistakes
14. 
15. 
16. jono: minecraft world, use world data to find coords, answer in blocks at coord
17. jono: nixos
18. jono: yeet.js (2018)
19. 
20. ad problem
21. 
22. laura: calc problem
23. pasword: contents: nothing
24. password: "leiden"

# TODO:
* improve submit script (it breaks after a few submissions)
* story for yeatjs
* set up mc world and load on server

