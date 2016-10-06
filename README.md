# expect.cr

expect.cr enabled the expect syntax to your specs


## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  expect:
    github: dukex/expect.cr
```


## Usage

Require expect in your spec file

```crystal
require "expect"
```

Use expect syntax like in rspec

```crystal

describe "My Specs" do
  it "expects 1 is equal 1" do
    expect(1).to eq(7)
  end

  it "expects nil is nil" do
    expect(nil).to be_nil
  end

  it "expects 5 is not 4" do
    expect(5).not_to eq(4)
  end
end
```

## Development

```
$ crystal deps
$ crystal spec
```

## Contributing

1. Fork it ( https://github.com/[your-github-name]/expect.cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [[dukex]](https://github.com/dukex) Duke - creator, maintainer
