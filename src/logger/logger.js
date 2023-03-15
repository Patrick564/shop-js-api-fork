module.exports = function logApp(req, res, next) {
  console.log("loading route " + req.url)
  next()
}
