import express, { Request, Response } from 'express';
import cors from 'cors';

const app = express();
const port = 3000;

app.use(cors());
app.use(express.json());

// Endpoint GET sederhana
app.get('/api/hello', (req: Request, res: Response) => {
  res.json({
    message: 'Hello, World!',
  });
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
