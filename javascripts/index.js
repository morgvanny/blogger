let app_instance
document.addEventListener('DOMContentLoaded', () => {
  const loadPosts = async params => {
    const posts = await (await fetch(BASEURL + '/api/posts')).json()
    app_instance = new App(posts)
    postList.innerHTML = app_instance.render()
  }

  const handleSubmission = e => {
    e.preventDefault()
    const post = {
      post: {
        title: e.target.title.value,
        content: e.target.content.value
      },
      user: {
        name: e.target.author.value
      }
    }
    fetch(BASEURL + '/api/posts', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(post)
    })
      .then(res => res.json())
      .then(data => {
        const post = new Post(data)
        postList.innerHTML = app_instance.render()
        e.target.reset()
      })
  }
  document
    .querySelector('#blog-form')
    .addEventListener('submit', handleSubmission)
  loadPosts()
})
