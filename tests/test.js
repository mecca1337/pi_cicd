var request = require('supertest');
var app = require('../index.js');

describe('GET /', function(){
	it('respond with hello world', function(done){
		
		//navigate to root and check the response is hello world
		request(app).get('/').expect('hello world', done);

	});
	it('respond with test', function(done){
		
		request(app).get('/test').expect('test', done);
	})
});