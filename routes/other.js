const express = require('express');

const router = express.Router();
const { db } = require('../db-config');

//= =================== GET ALL projects ==================

router.get('/', async (req, res) => {
  try {
    const [other] = await db.query(`
    SELECT *
    FROM other_projects
  `);
    res.json(other).status(201);
  } catch (err) {
    res.status(404);
  }
});

//= =================== GET ONE projects ==================

router.get('/:id', async (req, res) => {
  try {
    const id = await req.params.id;
    const [other] = await db.query(
      `
    SELECT *
    FROM other_projects WHERE id = ? 
  `,
      [id]
    );
    res.json(other).status(204);
  } catch (err) {
    res.status(404);
  }
});
//= =================== MODIFY a projects ==================

router.put('/:id', async (req, res) => {
  const id = await req.params.id;
  await db.query('UPDATE other_projects SET ? WHERE id = ?', [req.body, id]);
  res.status(204).json(req.body);
});

//= =================== DELETE a projects ==================

router.delete('/:id', async (req, res) => {
  const id = await req.params.id;
  await db.query('DELETE FROM other_projects WHERE id = ?', [id]);
  res.status(204).json(req.body);
});

//= =================== CREATE a projects ==================

router.post('/', async (req, res) => {
  const {id, name, description, url} = await req.body;

  await db.query(
    'INSERT INTO other_projects ( id, name, description, url) VALUES (?,?,?,?)',
    [id, name, description, url]
  );
  res.status(204).json(req.body);
});



module.exports = router;
