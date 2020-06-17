# Installation

Run the following command with proper cfg path

```bash
echo "
ws=\"/mnt/d/workspace\"
cfg=\"\${ws}/bash.config\"
alias ws=\"cd \${ws}\"
alias cfg=\"cd \${cfg}\"

if [ -d \"\${cfg}/inject\" ] ; then
	echo \"Injecting config...\"
	for f in \"\${cfg}\"/inject/*; do source \"\$f\"; done
fi
" >> ~/.bashrc
```
