<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class OrdersTest extends TestCase
{
    use DatabaseMigrations;
    /**
     * A basic unit test example.
     *
     * @return void
     */

    // Проверка получения пользовательской части приложения
    public function testGettingPage()
    {
        $response = $this->get("/");
        $response->assertOk();
    }

    // Проверка создания нового объявления - успешно
    public function testCreateOrderSuccessfull()
    {
        $response = $this->postJson("/api/application", [
            "title" => "Test Title",
            "description" => "Test Description",
            "price" => 123.50,
            "photos" => [
                "https://images.unsplash.com/photo-1658660854207-8886b1d69bb8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80", 
                "https://images.unsplash.com/photo-1658578271413-e6a9db42c5bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"
            ]
        ]);
        $this->assertEquals($response["code"], 200);
    }

    // Проверка создания нового объявления - ошибка
    public function testCreateOrderError()
    {
        $response = $this->postJson("/api/application", [
            "title" => "Test Title",
            "description" => "Test Description",
            "photos" => [
                "https://images.unsplash.com/photo-1658660854207-8886b1d69bb8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80", 
                "https://images.unsplash.com/photo-1658578271413-e6a9db42c5bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"
            ]
        ]);
        $this->assertEquals($response["code"], 500);
    }

    // Проверка получения объявлений
    public function testGetAllOrdersSuccessfull()
    {
        $response = $this->get("/api/application");
        $this->assertEquals($response["code"], 200);
    }

    // Проверка получения объявления по id
    public function testGetAllOrderSuccessfull()
    {
        $response = $this->get("/api/application/1");
        $this->assertEquals($response["code"], 200);
    }
}
