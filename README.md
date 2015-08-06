## react-native-barcode

Generate barcodes using iOS Core Image filters.

Currently supports:
 - Aztec

### Add it to your project

1. Run `npm install react-native-barcode --save`
2. Open your project in XCode, right click on `Libraries` and click `Add
   Files to "Your Project Name" [(Screenshot)](http://url.brentvatne.ca/g9Wp).
3. Add `libLFAztecCode.a` to `Build Phases -> Link Binary With Libraries`
   [(Screenshot)](http://url.brentvatne.ca/g9Wp).
4. Click on `LFAztecCode.xcodeproj` in `Libraries` and go the `Build
   Phases` tab. Double click the text to the right of `Header Search
   Paths` and verify that it has `$(SRCROOT)../react-native/React` - if it
   isn't, then add it. This is so XCode is able to find the headers that
   the `LFAztecCode` source files are referring to by pointing to the
   header files installed within the `react-native` `node_modules`
   directory. [(Screenshot)](http://url.brentvatne.ca/7wE0).
5. Compile and enjoy!

## Examples

![Example code result](https://raw.githubusercontent.com/leofidjeland/react-native-barcode/master/example.png)

```javascript
class AztecCodeExample extends React.Component{
  render() {
    return (
      <AztecCode content="React Native Rocks!" style={styles.code} />
    );
  }
}

var styles = StyleSheet.create({
  code: {
    height: 200,
    width: 200,
  },
});
```

### Additional props

Right now there is only support for the inputMessage property of the filter, which is renamed to the prop "content"

[Apple docs](https://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAztecCodeGenerator)


##TODO

- Add support for more props
- Add more barcode types
- Scale the image off the main thread?
