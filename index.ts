
import micro from 'micro'

const server = micro(async (req, res) => {
  return 'HelloWorld'
})

server.listen(process.env.PORT || 80)