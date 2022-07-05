<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Admin',
            'username' => 'Admin',
            'email' => 'dartzleks@gmail.com',
            'password' => bcrypt('Admin')
        ]);

        //User::create([
            //'name' => 'Rofid',
            //'email' => 'rofidnasifannafie@gmail.com',
            //'password' => bcrypt('rofid')
        //]);

         User::factory(3)->create();

         Category::create([
             'name' => 'Save Human',
             'slug' => 'save-human'
         ]);

         Category::create([
             'name' => 'Chaos',
             'slug' => 'chaos'
         ]);

         Category::create([
            'name' => 'Demo',
            'slug' => 'demo'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-Pertama',
        //     'excerpt' => 'lorem pertama',
        //     'body' => '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse molestie lacus a vulputate tincidunt. Donec ullamcorper augue sed purus posuere sagittis. Ut pretium, velit a posuere porttitor, dolor diam dictum ligula, egestas mollis enim sem a neque. Ut et urna blandit, tristique mi vel, lobortis enim.</p><p>Ut posuere augue eget velit elementum fringilla. Nullam vehicula tempor ipsum, ac efficitur sem malesuada nec. Sed venenatis metus malesuada est consectetur, vel porttitor ex ornare. Phasellus rhoncus massa eu rhoncus blandit. Aenean in scelerisque turpis. Pellentesque cursus, eros nec viverra cursus, eros massa condimentum ante, tristique efficitur justo ante sodales sapien. Sed urna mauris, venenatis nec quam sit amet, egestas euismod lorem. Aenean sit amet erat eleifend orci rutrum fringilla ut id purus.</p><p>Cras et magna dignissim, iaculis est eu, aliquam felis. Nunc tristique quam ut libero cursus, ac efficitur augue ullamcorper. Vestibulum sit amet condimentum tellus.</p>',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'lorem kedua',
        //     'body' => '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse molestie lacus a vulputate tincidunt. Donec ullamcorper augue sed purus posuere sagittis. Ut pretium, velit a posuere porttitor, dolor diam dictum ligula, egestas mollis enim sem a neque. Ut et urna blandit, tristique mi vel, lobortis enim.</p><p>Ut posuere augue eget velit elementum fringilla. Nullam vehicula tempor ipsum, ac efficitur sem malesuada nec. Sed venenatis metus malesuada est consectetur, vel porttitor ex ornare. Phasellus rhoncus massa eu rhoncus blandit. Aenean in scelerisque turpis. Pellentesque cursus, eros nec viverra cursus, eros massa condimentum ante, tristique efficitur justo ante sodales sapien. Sed urna mauris, venenatis nec quam sit amet, egestas euismod lorem. Aenean sit amet erat eleifend orci rutrum fringilla ut id purus.</p><p>Cras et magna dignissim, iaculis est eu, aliquam felis. Nunc tristique quam ut libero cursus, ac efficitur augue ullamcorper. Vestibulum sit amet condimentum tellus.</p>',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'lorem ketiga',
        //     'body' => '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse molestie lacus a vulputate tincidunt. Donec ullamcorper augue sed purus posuere sagittis. Ut pretium, velit a posuere porttitor, dolor diam dictum ligula, egestas mollis enim sem a neque. Ut et urna blandit, tristique mi vel, lobortis enim.</p><p>Ut posuere augue eget velit elementum fringilla. Nullam vehicula tempor ipsum, ac efficitur sem malesuada nec. Sed venenatis metus malesuada est consectetur, vel porttitor ex ornare. Phasellus rhoncus massa eu rhoncus blandit. Aenean in scelerisque turpis. Pellentesque cursus, eros nec viverra cursus, eros massa condimentum ante, tristique efficitur justo ante sodales sapien. Sed urna mauris, venenatis nec quam sit amet, egestas euismod lorem. Aenean sit amet erat eleifend orci rutrum fringilla ut id purus.</p><p>Cras et magna dignissim, iaculis est eu, aliquam felis. Nunc tristique quam ut libero cursus, ac efficitur augue ullamcorper. Vestibulum sit amet condimentum tellus.</p>',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-keempat',
        //     'excerpt' => 'lorem keempat',
        //     'body' => '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse molestie lacus a vulputate tincidunt. Donec ullamcorper augue sed purus posuere sagittis. Ut pretium, velit a posuere porttitor, dolor diam dictum ligula, egestas mollis enim sem a neque. Ut et urna blandit, tristique mi vel, lobortis enim.</p><p>Ut posuere augue eget velit elementum fringilla. Nullam vehicula tempor ipsum, ac efficitur sem malesuada nec. Sed venenatis metus malesuada est consectetur, vel porttitor ex ornare. Phasellus rhoncus massa eu rhoncus blandit. Aenean in scelerisque turpis. Pellentesque cursus, eros nec viverra cursus, eros massa condimentum ante, tristique efficitur justo ante sodales sapien. Sed urna mauris, venenatis nec quam sit amet, egestas euismod lorem. Aenean sit amet erat eleifend orci rutrum fringilla ut id purus.</p><p>Cras et magna dignissim, iaculis est eu, aliquam felis. Nunc tristique quam ut libero cursus, ac efficitur augue ullamcorper. Vestibulum sit amet condimentum tellus.</p>',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
