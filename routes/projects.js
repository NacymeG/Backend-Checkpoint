const express = require('express');

const router = express.Router();
const { db } = require('../db-config');

//= =================== GET ALL projects ==================

router.get('/', async (req, res) => {
  try {
    const [project] = await db.query(`
    SELECT *
    FROM project
  `);
    res.json(project).status(201);
  } catch (err) {
    res.status(404);
  }
});

//= =================== GET ONE project ==================

router.get('/:id', async (req, res) => {
  try {
    const id = await req.params.id;
    const [project] = await db.query(
      `
    SELECT *
    FROM project WHERE id = ? 
  `,
      [id]
    );
    res.json(project).status(204);
  } catch (err) {
    res.status(404);
  }
});
//= =================== MODIFY a project ==================

router.put('/:id', async (req, res) => {
  const id = await req.params.id;
  await db.query('UPDATE project SET ? WHERE id = ?', [req.body, id]);
  res.status(204).json(req.body);
});

//= =================== DELETE a project ==================

router.delete('/:id', async (req, res) => {
  const id = await req.params.id;
  await db.query('DELETE FROM project WHERE id = ?', [id]);
  res.status(204).json(req.body);
});

//= =================== CREATE a project ==================

router.post('/', async (req, res) => {
  const {title, description, image, url} = await req.body;

  await db.query(
    'INSERT INTO project ( title, description, image, url) VALUES (?,?,?,?)',
    [title, description, image, url]
  );
  res.status(204).json(req.body);
});


module.exports = router;
