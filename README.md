# Cloud Native Box

## Preparing Vagrant Box
```
git clone https://github.com/yeemon4398/cloudnative-box.git
cd cloudnative-box/
mkdir .ssh
cd .ssh/
pwd
ssh-keygen      # (Need to replace: previous_pwd_result/id_rsa)
vi Vagrantfile      # (Need to replace: Path to your private key file location)
```

## Making Vagrant Box Up and Running
```
vagrant up
vagrant status      # Check vagrant box is up or not
```

## Making kind cluster Up and Running
```
vagrant ssh       # password: vagrant
cd k8s-cop/manifests/setup
/bin/bash setup-kindcluster123.sh      # Can run preferred setup file based on your requirements
```
