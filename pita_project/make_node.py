import yaml
import sys

config = yaml.safe_load(open("./config.yml"))
print config

lib = config['lib']
#checkout based on config
for project, tag in lib.items():
    print project, tag


# build
#for project, tag in lib.items():
#    print project, tag



print
#checkout based on config
node = config['node']
for project, tag in node.items():
    print project, tag

#build node









