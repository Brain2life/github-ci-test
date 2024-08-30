const request = require('supertest');
const app = require('./app');                     

describe('Test the app', () => {
  test('Get / should return Fundamentals of DevOps!', async () => {
    const response = await request(app).get('/'); 
    expect(response.statusCode).toBe(200);        
    expect(response.text).toBe('Fundamentals of DevOps!');  
  });

  test('Get /healthz should return App is healthy', async () => {
    const response = await request(app).get('/healthz'); 
    expect(response.statusCode).toBe(200);        
    expect(response.text).toBe('App is healthy');  
  });
});