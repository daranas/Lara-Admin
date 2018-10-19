<?php
namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;

/**
 * Class HomeController
 * @package App\Http\Controllers
 */
class MainController extends Controller
{
    public function index() {
        echo "Test";
    }
}