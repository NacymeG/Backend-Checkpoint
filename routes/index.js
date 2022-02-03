const projectsRoutes = require('./projects');
const otherRoutes = require('./other');

const setupRoutes = (app) => {
  app.use('/projects', projectsRoutes);
  app.use('/other', otherRoutes);

};

module.exports = {
  setupRoutes,
};

