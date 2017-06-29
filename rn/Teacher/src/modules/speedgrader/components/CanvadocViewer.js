// @flow

import React, { Component, PropTypes } from 'react'
import { requireNativeComponent } from 'react-native'

type Props = {
  config: {
    previewPath: string,
    drawerInset: number,
  },
  style?: Object,
}

export default class CanvadocViewer extends Component<any, Props, any> {
  render () {
    return <CanvadocView style={this.props.style} {...this.props} />
  }
}

CanvadocViewer.propTypes = {
  config: PropTypes.shape({
    previewPath: PropTypes.string.isRequired,
    drawerInset: PropTypes.number.isRequired,
  }).isRequired,
}

const CanvadocView = requireNativeComponent('CanvadocView', CanvadocViewer)
