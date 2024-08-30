const request = require('supertest');
const app = require('./app');                     

describe('Test the app', () => {
  test('Get / should return Hello, World!', async () => {
    const response = await request(app).get('/'); 
    expect(response.statusCode).toBe(200);        
    expect(response.text).toBe('Hello, World!');  
  });

  test('Get /healthz should return App is healthy', async () => {
    const response = await request(app).get('/healthz'); 
    expect(response.statusCode).toBe(200);        
    expect(response.text).toBe('App is healthy');  
  });
});