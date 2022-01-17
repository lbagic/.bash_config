Remove previous go installation

```sh
sudo rm -rf /usr/local/go
```

Download go (edit version number)

```sh
wget -c https://golang.org/dl/go1.17.6.linux-amd64.tar.gz
```

Extract the archive you downloaded into /usr/local

```sh
sudo tar -C /usr/local -xzf go1.17.6.linux-amd64.tar.gz
```

Add /usr/local/go/bin to the PATH environment variable.<br>
You can do this by adding the following line to your $HOME/.profile or /etc/profile (for a system-wide installation):

```sh
export PATH=$PATH:/usr/local/go/bin
```

Verify installation

```sh
go version
```
