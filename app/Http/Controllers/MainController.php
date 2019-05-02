<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Models\Page;
use TCG\Voyager\Models\Category;
use TCG\Voyager\Models\Post;
use App\Nowosti;
use App\Tovari;


class MainController extends Controller
{
    public function getIndex() //Вывод главной страницы 245 переделываюю
    {
        $material = Page::where('slug', '=', 'index')->get();
        $novosti = Nowosti::latest()->limit(4)->get(); // Вывод 4-x новостей на главной
        return view('index')->with([
            'novosti' => $novosti,
            'material' => $material
        ]);
    }


    public function newss() // вывод оглавлений новостей на  сайте
    {
        $novostis = Nowosti::latest()->get();

        if (!$novostis->count()) {
            abort(404); // проверка на не существ страницу с ошибкой 404
        } else {
            return view('newss')->with('novostis', $novostis);
        }
    }

    public function news($page) // вывод одной новости
    {
        $novosti = Nowosti::where('slug', '=', $page)->get();

        if (!$novosti->count()) {
            abort(404); // проверка на не существ страницу с ошибкой 404
        } else {
            return view('news')->with('novosti', $novosti);
        }
    }

    public function category($tovar) // Вывод страницы или товара из категории
    {
        $material = Page::where('slug', '=', $tovar)->get();
        if (!$material->count()) {    // ЕСЛИ НЕТУ ТАКОГО материала уходим к товарам
            $cat = Tovari::where('category_id', '=', $tovar)->get();
            $catname = Category::where('slug', '=', $tovar)->get(); // запрос в категории что бы вывести название категории
            if (!$cat->count()) { // ЕСЛИ НЕТУ ТАКОГО товара выводим 404
                abort(404); // проверка на не существ страницу с ошибкой 404
            } else {
                return view('cat')->with(
                    [
                        'catname' => $catname,
                        'cat' => $cat
                    ]);
            }
        } else {
            return view('stranitsi')->with('material', $material);
        }
    }

    public function tovar($catid, $tovarid) // Вывод товара из категории
    {

        $cat = Category::where('slug', '=', $catid)->get();
        $tovar = Tovari::where('slug', '=', $tovarid)->get();
        if (!$tovar->count()) { // ЕСЛИ НЕТУ ТАКОГО товара выводим 404
            abort(404); // проверка на не существ страницу с ошибкой 404
        } else {
            return view('tovar')->with(
                [
                    'catname' => $cat,
                    'tovar' => $tovar
                ]);
        }


    }


}
