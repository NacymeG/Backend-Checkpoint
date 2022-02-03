const projectsRoutes = require('./projects');
const otherRoutes = require('./other');
// const adminRoutes = require('./admin');

const setupRoutes = (app) => {
  app.use('/projects', projectsRoutes);
  app.use('/other', otherRoutes);
  // app.use('/admin', adminRoutes);


};

module.exports = {
  setupRoutes,
};

