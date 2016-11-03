/**
 * @providesModule AztecCode
 * @flow
 */

'use strict';

import React, { PropTypes } from 'react';
import {
  requireNativeComponent,
} from 'react-native';

class AztecCode extends React.Component {
  render() {
    return <LFAztecCode {...this.props} />;
  }
}

AztecCode.propTypes = {
  /**
   * This is the content of the generated Aztec Code
   */
   content: React.PropTypes.string,
};

var LFAztecCode = requireNativeComponent('LFAztecCode', AztecCode);

module.exports = AztecCode;
