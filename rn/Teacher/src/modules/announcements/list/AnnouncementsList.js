/* @flow */

import React, { Component } from 'react'
import { connect } from 'react-redux'
import {
  View,
  StyleSheet,
  FlatList,
} from 'react-native'
import i18n from 'format-message'
import moment from 'moment'

import Screen from '../../../routing/Screen'
import refresh from '../../../utils/refresh'
import Row from '../../../common/components/rows/Row'
import Actions from './actions'
import Images from '../../../images'

type State = AsyncState & {
  announcements: Discussion[],
}

type OwnProps = {
  courseID: string,
}

export type Props = OwnProps & State & Actions & RefreshProps & NavigationProps

export class AnnouncementsList extends Component<any, Props, any> {

  render () {
    return (
      <Screen
        navBarStyle='dark'
        title={i18n('Announcements')}
        subtitle={this.props.courseName}
        rightBarButtons={[
          {
            image: Images.add,
            testID: 'announcements.list.addButton',
            action: this.addAnnouncement,
          },
        ]}
      >
        <View style={styles.container}>
          <FlatList
            data={this.props.announcements}
            renderItem={this.renderRow}
            keyExtractor={(item, index) => item.id}
            testID='announcements.list.list'
            refreshing={Boolean(this.props.pending)}
            onRefresh={this.props.refresh}
          />
        </View>
      </Screen>
    )
  }

  renderRow = ({ item, index }: { item: Discussion, index: number }) => {
    return (
      <Row
        title={item.title}
        subtitle={moment(item.delayed_post_at || item.posted_at).format(`MMM D [${i18n('at')}] h:mm A`)}
        border='bottom'
        height='auto'
        disclosureIndicator={true}
        testID={`announcements.list.announcement.row-${index}`}
        onPress={this.selectAnnouncement(item)}
      />
    )
  }

  addAnnouncement = () => {
    this.props.navigator.show(`/courses/${this.props.courseID}/announcements/new`, { modal: true })
  }

  selectAnnouncement (announcement: Discussion) {
    return () => this.props.navigator.show(announcement.html_url, { modal: false }, {
      isAnnouncement: true,
    })
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    marginBottom: global.tabBarHeight,
  },
})

export function mapStateToProps ({ entities }: AppState, { courseID }: OwnProps): State {
  let announcements = []
  let pending = 0
  let error = null
  let courseName = ''
  if (entities &&
    entities.courses &&
    entities.courses[courseID] &&
    entities.courses[courseID].announcements &&
    entities.discussions) {
    const course = entities.courses[courseID]
    const refs = course.announcements.refs
    pending = course.announcements.pending
    error = course.announcements.error
    if (course.course) {
      courseName = course.course.name
    }
    announcements = refs
      .map(ref => entities.discussions[ref].data)
  }
  return {
    announcements,
    courseName,
    pending,
    error,
  }
}

const Refreshed = refresh(
  props => {
    props.refreshAnnouncements(props.courseID)
  },
  props => props.announcements.length === 0,
  props => Boolean(props.pending)
)(AnnouncementsList)
const Connected = connect(mapStateToProps, Actions)(Refreshed)
export default (Connected: Component<any, Props, any>)
