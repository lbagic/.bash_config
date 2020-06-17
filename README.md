# Installation

Run the following command with proper cfg path

```bash
echo "
cfg=\"/mnt/d/workspace/bash.config\"

if [ -d \"\${cfg}/inject\" ] ; then
	echo \"Injecting config...\"
	for f in \"\${cfg}\"/inject/*; do source \"\$f\"; done
fi
" >> ~/.bashrc
```
