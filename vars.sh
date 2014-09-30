rgx='((?<=\>)[a-z0-9.~_-]+\.(deb|rpm))'
branch="master"
branch2="5.1"
#ub_all="http://osci-obs.vm.mirantis.net:82/ubuntu-fuel-${branch}/ubuntu/all/"
#ub_amd64="http://osci-obs.vm.mirantis.net:82/ubuntu-fuel-${branch}/ubuntu/amd64/"
#ct_amd_64="http://osci-obs.vm.mirantis.net:82/centos-fuel-${branch}/centos/x86_64/"
#ct_all="http://osci-obs.vm.mirantis.net:82/centos-fuel-${branch}/centos/noarch/"
lx_list="
http://mirrors.srt.mirantis.net/centos/6/os/x86_64/Packages/
#http://mirrors.srt.mirantis.net/centos/6.5/os/x86_64/Packages/
http://mirrors.srt.mirantis.net/ubuntu/dists/precise/

#http://mirrors.srt.mirantis.net/ubuntu/dists/precise/universe/binary-amd64/
#http://mirrors.srt.mirantis.net/ubuntu/dists/precise/restricted/binary-amd64/
#http://mirrors.srt.mirantis.net/ubuntu/dists/precise/multiverse/binary-amd64/
#http://mirrors.srt.mirantis.net/ubuntu/dists/precise/main/binary-amd64/

http://osci-obs.vm.mirantis.net:82/ubuntu-fuel-${branch}/ubuntu/all/
http://osci-obs.vm.mirantis.net:82/ubuntu-fuel-${branch}/ubuntu/amd64/
http://osci-obs.vm.mirantis.net:82/centos-fuel-${branch}/centos/x86_64/
http://osci-obs.vm.mirantis.net:82/centos-fuel-${branch}/centos/noarch/
"
#http://fuel-mirror.srt.mirantis.net/fwm/${branch2}/centos/os/x86_64/Packages/
#http://fuel-mirror.srt.mirantis.net/fwm/${branch2}/ubuntu/pool/main/

cachefile="${SCRIPTDIRNAME}/cache.txt"
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
