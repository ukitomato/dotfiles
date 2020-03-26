import glob
import subprocess
import os

targets = ['.git']
root = '/Users/yuki/Dropbox/Developments'
for target in targets:
    paths = glob.glob('/Users/yuki/Developments/*/'+target)
    paths = paths + glob.glob(root+'/*/*/'+target)
    paths = paths + glob.glob(root+'/*/*/*/'+target)
    for path in paths:
        if not os.path.islink(path):
            os.makedirs('/Users/yuki/.developments/' + '/'.join(path.split('/')[4:-1]), exist_ok=True)
            subprocess.call(['mv', path, '/Users/yuki/.developments/' + '/'.join(path.split('/')[4:-1])])
            subprocess.call(['cd', root+'/' + '/'.join(path.split('/')[4:-1])])
            os.symlink('/Users/yuki/.developments/' + '/'.join(path.split('/')[4:]), path)
            print('Symbolic path', path, 'created.')
        else:
            print(path, 'is symbolic.')

targets = ['package.json']

for target in targets:
    paths = glob.glob(root+'/*/'+target)
    paths = paths + glob.glob(root+'/*/*/'+target)
    paths = paths + glob.glob(root+'/*/*/*/'+target)
    for path in paths:
        if not os.path.islink(path):
            if not os.path.exists(root+'/' + '/'.join(path.split('/')[4:-1])+'/node_modules'):
                os.makedirs(root+'/' + '/'.join(path.split('/')[4:-1])+'/node_modules', exist_ok=True)
            os.makedirs('/Users/yuki/.developments/' + '/'.join(path.split('/')[4:-1]), exist_ok=True)
            subprocess.call(['mv', root+'/' + '/'.join(path.split('/')[4:-1])+'/node_modules', '/Users/yuki/.developments/' + '/'.join(path.split('/')[4:-1])+'/node_modules'])
            subprocess.call(['cd', root+'/' + '/'.join(path.split('/')[4:-1])])
            os.symlink('/Users/yuki/.developments/' + '/'.join(path.split('/')[4:-1])+'/node_modules', root+'/' + '/'.join(path.split('/')[4:-1])+'/node_modules')
            print('Symbolic path', root+'/' + '/'.join(path.split('/')[4:-1])+'/node_modules', 'created.')
        else:
            print(path, 'is symbolic.')
