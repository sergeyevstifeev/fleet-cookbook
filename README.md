# fleet-cookbook
Chef cookbook to set up [fleetd](https://github.com/coreos/fleet) service. Currently supports CentOS 7.

## Recipes
| Name | Description |
|:-----|:------------|
| `default` | Install and setup the service

## Attributes

| attribute | default setting | description |
|:---------------------------------|:---------------|:-----------------------------------------|
|`default[:fleet][:user]`|`root`| User to run fleet.service |
|`default[:fleet][:public_ip]`|`nil`| public_ip setting to use in fleet.conf |
|`default[:fleet][:use_vagrant_keys]` | `false` | Whether to bootstrap machine with vagrant insecure keypair |
|`default[:fleet][:version]` | `0.9.1` | Fleet version to install |

## License

The MIT License (MIT)

Copyright (c) 2015 Sergey Evstifeev

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

