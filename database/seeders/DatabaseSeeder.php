<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Post;
use App\Models\Category;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming',
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal',
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design',
        ]);

        Post::factory(20)->create();

        User::create([
            'name' => 'Jovi Julian Hendri',
            'username' => 'jovi',
            'email' => 'jovi@gmail.com',
            'password' => bcrypt('password')
        ]);

        // User::create([
        //     'name' => 'Julian',
        //     'email' => 'julian@gmail.com',
        //     'password' => bcrypt('123')
        // ]);



        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum Pertama',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo quaerat dolores adipisci delectus autem officia in perspiciatis harum. Maiores a fugiat quibusdam, ducimus adipisci facilis non et, iste repudiandae qui obcaecati natus exercitationem. Aperiam non, debitis accusamus eius sunt iste et enim quasi libero, pariatur ab ullam beatae sint illum, necessitatibus iure quos minus tenetur exercitationem perspiciatis in perferendis accusantium laborum. Nostrum quis dolorum laborum! Magni saepe, necessitatibus voluptatum eligendi amet officia excepturi earum possimus cum quia dolorum libero error impedit sed dicta placeat delectus vero, consectetur suscipit distinctio quibusdam architecto. Ipsam quidem natus ullam atque iure, recusandae laboriosam voluptatem.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum Kedua',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo quaerat dolores adipisci delectus autem officia in perspiciatis harum. Maiores a fugiat quibusdam, ducimus adipisci facilis non et, iste repudiandae qui obcaecati natus exercitationem. Aperiam non, debitis accusamus eius sunt iste et enim quasi libero, pariatur ab ullam beatae sint illum, necessitatibus iure quos minus tenetur exercitationem perspiciatis in perferendis accusantium laborum. Nostrum quis dolorum laborum! Magni saepe, necessitatibus voluptatum eligendi amet officia excepturi earum possimus cum quia dolorum libero error impedit sed dicta placeat delectus vero, consectetur suscipit distinctio quibusdam architecto. Ipsam quidem natus ullam atque iure, recusandae laboriosam voluptatem.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum Ketiga',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo quaerat dolores adipisci delectus autem officia in perspiciatis harum. Maiores a fugiat quibusdam, ducimus adipisci facilis non et, iste repudiandae qui obcaecati natus exercitationem. Aperiam non, debitis accusamus eius sunt iste et enim quasi libero, pariatur ab ullam beatae sint illum, necessitatibus iure quos minus tenetur exercitationem perspiciatis in perferendis accusantium laborum. Nostrum quis dolorum laborum! Magni saepe, necessitatibus voluptatum eligendi amet officia excepturi earum possimus cum quia dolorum libero error impedit sed dicta placeat delectus vero, consectetur suscipit distinctio quibusdam architecto. Ipsam quidem natus ullam atque iure, recusandae laboriosam voluptatem.',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-keempat',
        //     'excerpt' => 'Lorem ipsum Keempat',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo quaerat dolores adipisci delectus autem officia in perspiciatis harum. Maiores a fugiat quibusdam, ducimus adipisci facilis non et, iste repudiandae qui obcaecati natus exercitationem. Aperiam non, debitis accusamus eius sunt iste et enim quasi libero, pariatur ab ullam beatae sint illum, necessitatibus iure quos minus tenetur exercitationem perspiciatis in perferendis accusantium laborum. Nostrum quis dolorum laborum! Magni saepe, necessitatibus voluptatum eligendi amet officia excepturi earum possimus cum quia dolorum libero error impedit sed dicta placeat delectus vero, consectetur suscipit distinctio quibusdam architecto. Ipsam quidem natus ullam atque iure, recusandae laboriosam voluptatem.',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
