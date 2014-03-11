Why does the plane need to require airport?

In the land method you don't tell the plane to land

Think about using

```
raise "Unable to land due to bad weather!" if weather_stormy?
raise "We are full" if full?

```
rather than

```
if stormy? && full?
      raise "Unable to land."
end
```

2 of the tests don't pass!

# FAIL
