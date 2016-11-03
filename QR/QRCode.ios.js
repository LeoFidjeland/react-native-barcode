/**
 * @providesModule QRCode
 * @flow
 */

'use strict';

import React, { PropTypes } from 'react';
import {
  requireNativeComponent,
} from 'react-native';

class QRCode extends React.Component {
  render() {
    return <LFQRCode {...this.props} />;
  }
}

QRCode.propTypes = {
  /**
   * This is the content of the generated Aztec Code
   */
   content: React.PropTypes.string,
};

var LFQRCode = requireNativeComponent('LFQRCode', QRCode);

module.exports = QRCode;
