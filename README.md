# Lights App

A simple Rails app to mess around with my lights.

From CLI:

``` shell
$ hue all on
$ hue all off
$ hue light 2 on
$ hue light 2 --brightness 20
```

From Ruby:

``` ruby
> client = Hue::Client.new
> light = client.lights.first
> light.on = true
> light.hue = 46920
> light.color_temperature = 100
> light.set_state({:color_temperature => 400, :transition => 100})
```



## Hue API
- [Documentation](http://developers.meethue.com/1_lightsapi.html)

## Credit

This app uses the [hue](https://github.com/soffes/hue) gem by Sam Soffes.
