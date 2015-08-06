/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
'use strict';

var React = require('react-native');
var {
  AppRegistry,
  StyleSheet,
  View,
} = React;

var AztecCode = require('react-native-barcode').AztecCode;

class AztecCodeExample extends React.Component{
  render() {
    return (
      <View style={styles.container}>
        <AztecCode content="React Native Rocks!" style={styles.code} />
      </View>
    );
  }
}

var styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#fff',
  },
  code: {
    height: 200,
    width: 200,
  },
});

AppRegistry.registerComponent('AztecCodeExample', () => AztecCodeExample);
