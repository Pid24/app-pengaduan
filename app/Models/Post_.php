<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            "title" => "Postingan Pertama",
            "slug" => "postingan-pertama",
            "author" => "Rofid Nasif Annafie",
            "body" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut blandit facilisis convallis. Praesent vestibulum mollis diam quis placerat. Maecenas in finibus est. Phasellus euismod molestie finibus. Aliquam rhoncus id tellus a iaculis. Suspendisse pharetra, purus vitae pulvinar efficitur, risus purus porta turpis, eget tincidunt quam erat vestibulum turpis. Aenean fringilla viverra egestas. Cras maximus neque erat, lobortis accumsan lorem iaculis sodales. Fusce vestibulum, leo eget ultrices efficitur, nunc nulla varius lorem, quis porta sapien ligula vitae erat."
        ],
        [
            "title" => "Postingan Kedua",
            "slug" => "postingan-kedua",
            "author" => "Naba Elang Pamulat",
            "body" => "Duis at elit a orci dignissim mattis. Pellentesque congue enim lorem, non aliquam nibh viverra id. Nulla eget dolor vitae odio interdum tempus ullamcorper interdum elit. Sed volutpat metus sit amet leo eleifend, semper pharetra metus iaculis. Etiam in fringilla tortor. Quisque vel mauris a diam rutrum viverra. Nam facilisis at magna in eleifend. Etiam porttitor blandit velit a laoreet."
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
    
}