import React, { Component } from "react";

import { TreeSelect } from "antd";
import { withFirebase } from "../Firebase/Firebase";

const { TreeNode } = TreeSelect;

class AdminDropdown extends Component {
  treeNodeTitle(member, email, groupName) {
    const span = member ? `${member} - ${email} ` : `${groupName} `;

    return (
      <div>
        <span>{span}</span>
      </div>
    );
  }

  render() {
    const { groups, loadingGroups, value, modalVisible } = this.props;
    const { onSelect } = this.props;

    return (
      <React.Fragment>
        {loadingGroups && <div>Loading...</div>}
        <TreeSelect
          size="large"
          className="admin-dropdown"
          value={modalVisible ? value : undefined}
          placeholder="Choose Group"
          onChange={this.onChange}
          onSelect={onSelect}
        >
          {Object.keys(groups).map((groupName, index) => {
            const group = groups[groupName];
            if (group) {
              return (
                <TreeNode
                  value={`${groupName}-${index}`}
                  title={this.treeNodeTitle(undefined, undefined, groupName)}
                  key={`${groupName}-${index}`}
                  uid={groupName}
                  member={undefined}
                  groupName={groupName}
                >
                  {Object.keys(group).map((uid, index) => {
                    const { email, displayName } = group[uid];
                    return uid ? (
                      <TreeNode
                        value={`${displayName}-${index}`}
                        title={this.treeNodeTitle(
                          displayName,
                          email,
                          groupName
                        )}
                        key={`${displayName}-${index}`}
                        uid={uid}
                        member={displayName}
                        groupName={groupName}
                      />
                    ) : null;
                  })}
                </TreeNode>
              );
            }
            return null;
          })}
        </TreeSelect>
      </React.Fragment>
    );
  }
}

export default withFirebase(AdminDropdown);
