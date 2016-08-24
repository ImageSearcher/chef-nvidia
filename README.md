# chef-nvidia-cookbook

NVIDIA Driver bootstrap for running GPU enabled applications (Caffe, Torch7, TensorFlow).

## Supported Platforms

Written with Amazon Linux AMI in mind, but should work on Ubuntu, etc.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>[:nvidia][:arch]</tt></td>
    <td>String</td>
    <td>the architecture for the driver</td>
    <td><tt>x86_64</tt></td>
  </tr>
  <tr>
    <td><tt>[:nvidia][:version]</tt></td>
    <td>String</td>
    <td>the version for the driver</td>
    <td><tt>364.19</tt></td>
  </tr>
</table>

## Usage

### chef-nvidia::default

Include `chef-nvidia` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[chef-nvidia::default]"
  ]
}
```

## License and Authors

Author:: Brad Folkens (<bfolkens@gmail.com>)
