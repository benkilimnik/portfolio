import app from "firebase/app"
import "firebase/auth"
import "firebase/firestore"
import "firebase/functions"

import * as ROUTES from "../../constants/routes"

const config = {
  apiKey: "AIzaSyCJWds3z2efXsKu1MqcF9THNeCb4LvPvRg",
  authDomain: "communication-style-assessent.firebaseapp.com",
  databaseURL: "https://communication-style-assessent.firebaseio.com",
  projectId: "communication-style-assessent",
  storageBucket: "communication-style-assessent.appspot.com",
  messagingSenderId: "605098369514",
  appId: "1:605098369514:web:fbd383fde133a1a6"
}

class Firebase {
  constructor() {
    app.initializeApp(config)

    this.auth = app.auth()
    this.firestore = app.firestore()
    this.functions = app.functions()

    this.formatResults = this.functions.httpsCallable("formatResults")
    this.createUser = this.functions.httpsCallable("createUser")
    this.adminClickDelete = this.functions.httpsCallable("adminClickDelete")
    this.getUserComStyle = this.functions.httpsCallable("getUserComStyle")
    this.allowViewCom = this.functions.httpsCallable("allowViewCom")
    this.groupAdd = this.functions.httpsCallable("groupAdd")
    this.signInEmailPassword = this.functions.httpsCallable(
      "signInEmailPassword"
    )
  }

  onAuthUserListener = (next, fallback) => {
    return this.auth.onIdTokenChanged(authUser => {
      if (authUser) {
        authUser.getIdTokenResult().then(idTokenResult => {
          const {
            user_id,
            admin,
            VIEW_RES,
            TOOK_SUR,
            name
          } = idTokenResult.claims

          const user = { uid: user_id, admin, VIEW_RES, TOOK_SUR, name }
          next(user)
        })
      } else {
        fallback()
      }
    })
  }

  onGroupListener = (callback, authUser) => {
    console.log(authUser)
    return this.firestore.collection("groups").onSnapshot(groupsSnap => {
      const groups = {}
      groupsSnap.forEach(doc => {
        if (!doc.data()[authUser.uid]) {
          groups[doc.id] = doc.data()
        }
      })
      callback(groups)
    })
  }

  signIn = (email, password) => {
    return this.signInEmailPassword({ email, password }).then(res => {
      if (res.data.code) {
        throw res.data
      }
      return this.auth.signInWithEmailAndPassword(
        res.data.email,
        res.data.password
      )
    })
  }

  signUpCreateUser = (displayName, email, group_code) => {
    return this.createUser({ displayName, email, group_code }).then(
      res => {
        if (res.data.code) {
          throw res.data
        }
        return this.signIn(email, group_code)
      },
      err => {
        throw err
      }
    )
  }

  signOut = history => {
    history.push(ROUTES.SIGN_IN)
    this.auth.signOut()
  }

  test = () => this.users()

  isAdmin = callback => {
    if (this.auth.currentUser) {
      this.auth.currentUser
        .getIdTokenResult()
        .then(idTokenResult => {
          if (!!idTokenResult.claims.admin) {
            callback(true)
          } else {
            callback(false)
          }
        })
        .catch(error => {
          callback(false)
        })
    }
    callback(false)
  }

  isAdminNoCallback = () => {
    if (this.auth.currentUser) {
      return this.auth.currentUser
        .getIdTokenResult()
        .then(idTokenResult => {
          if (!!idTokenResult.claims.admin) {
            return true
          } else {
            return false
          }
        })
        .catch(error => {
          return false
        })
    }
    return false
  }

  completeForm = form => {
    return this.formatResults(form)
      .then(res => {
        this.auth.currentUser.getIdToken(true)
      })
      .catch(err => {
        console.error(err)
      })
  }

  adminDeleteItem = (uid, groupName) => {
    return this.adminClickDelete({ uid, groupName })
      .then(res => {
        return res.data
      })
      .catch(err => {
        throw err
      })
  }

  adminAllowViewCom = (uid, groupName) => {
    return this.allowViewCom({ uid, groupName })
      .then(res => {
        this.sendEmails(res.data.emailMap)
        return res.data
      })
      .catch(err => {
        throw err
      })
  }

  sendEmails = emailMap => {
    Object.keys(emailMap).forEach(name => {
      const email = emailMap[name]
      this.auth
        .sendPasswordResetEmail(email)
        .then(() => {})
        .catch(error => {
          console.error(error)
        })
    })
  }

  getUserCommunicationStyle = uid => {
    return this.getUserComStyle({ uid }).then(res => {
      if (res.data) {
        if (res.data.error) {
          console.error(res.data.error)
          return null
        }
        return res.data
      }
    })
  }

  adminGroupAdd = groupName => {
    return this.groupAdd({ groupName })
      .then(res => {
        return res.data
      })
      .catch(err => {
        throw err
      })
  }
}

export default Firebase
