# Boot Loader

Display the source and location of the OS image
```Cisco IOS
switch: set
```

Initialize the Flash filesystem
```Cisco IOS
switch: flash_init
```

Display the contents in the Flash filesystem
```Cisco IOS
switch: dir flash:
```

Change the image in the BOOT environment variable
```Cisco IOS
switch: BOOT=flash:<IMAGE>
switch: set
```

Load the IOS image
```Cisco IOS
switch: boot
```
