class Post {
  constructor(postObj) {
    this.title = postObj.title
    this.content = postObj.content
    this.user = new User(postObj.user)
  }

  render() {
    return `<div class="card">
          <div class="card-content">
            <p>By: ${this.user.render()}</p>
            <span class="card-title">${this.title}</span>
            <p>
              ${this.content}
            </p>
          </div>
        </div>`
  }
}
