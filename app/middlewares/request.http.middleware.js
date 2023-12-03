import logger from '../helpers/logger.js';

export default (req, res, next) => {
  logger.http(`${req.method} ${req.url}`);
  next();
};
