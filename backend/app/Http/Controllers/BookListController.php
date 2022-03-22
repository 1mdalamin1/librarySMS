<?php

namespace App\Http\Controllers;

use App\Models\BookList;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests\StoreBookListRequest;
use App\Http\Requests\UpdateBookListRequest;
// use Dotenv\Validator;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class BookListController extends Controller
{
    /**
     * Display a Book listing as paginate from the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function book_list()
    {
        if (request()->has('key') && strlen(request()->has('key')) > 0) {
            $key = request()->key;

            if (BookList::where('status', 1)->where('section', $key)->exists()) {
                $book_list = BookList::where('status', 1)
                    ->orderBy('id', 'DESC')
                    ->where('section', $key)->paginate(10);
            } else if (BookList::where('status', 1)->where('id', $key)->exists()) {
                $book_list = BookList::where('status', 1)
                    ->orderBy('id', 'DESC')
                    ->where('id', $key)->paginate(10);
            } else if (BookList::where('status', 1)->where('name', $key)->exists()) {
                $book_list = BookList::where('status', 1)
                    ->orderBy('id', 'DESC')
                    ->where('name', $key)->paginate(10);
            } else if (BookList::where('status', 1)->where('author', $key)->exists()) {
                $book_list = BookList::where('status', 1)
                    ->orderBy('id', 'DESC')
                    ->where('author', $key)->paginate(10);
            } else if (BookList::where('status', 1)->where('name', 'LIKE', '%' . $key . '%')->exists()) {
                $book_list = BookList::where('status', 1)
                    ->where('name', 'LIKE', '%' . $key . '%')
                    ->orderBy('id', 'DESC')
                    ->paginate(10);
            } else if (BookList::where('status', 1)->where('author', 'LIKE', '%' . $key . '%')->exists()) {
                $book_list = BookList::where('status', 1)
                    ->where('author', 'LIKE', '%' . $key . '%')
                    ->orderBy('id', 'DESC')
                    ->paginate(10);
            }
            else {
                $book_list = BookList::where('status', 1)
                    ->where('section', 'LIKE', '%' . $key . '%')
                    ->orderBy('id', 'DESC')
                    ->paginate(10);
            }
        }else{
            $book_list = BookList::where('status', 1)->orderBy('id', 'DESC')->paginate(10);
        }

        return response()->json($book_list, 200);
    }

    /**
     * Display a Book listing as paginate from the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function get($id)
    {
        $book = BookList::find($id);

        return response()->json($book, 200);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreBookListRequest  $request
     * @return \Illuminate\Http\Response
     */

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'min:4'],
            'author' => ['required'],
            'section' => ['required'],
            'image' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'data' => $validator->errors(),
            ], 422);
        }

        $book = BookList::create($request->except('image'));
        if ($request->hasFile('image')) {
            $book->image = Storage::put('upload/books', $request->file('image'));
            $book->save();
        }

        return response()->json($book, 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\BookList  $bookList
     * @return \Illuminate\Http\Response
     */
    public function show(BookList $bookList)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\BookList  $bookList
     * @return \Illuminate\Http\Response
     */
    public function edit(BookList $bookList)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateBookListRequest  $request
     * @param  \App\Models\BookList  $bookList
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'min:4'],
            'author' => ['required'],
            'section' => ['required'],
            // 'image' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'data' => $validator->errors(),
            ], 422);
        }

        $book = BookList::find($request->id);
        // $book = BookList::create($request->except('image'));
        $book->fill($request->except('image'))->save();
        if ($request->hasFile('image')) {
            $book->image = Storage::put('upload/books', $request->file('image'));
            $book->save();
        }

        return response()->json($book, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\BookList  $bookList
     * @return \Illuminate\Http\Response
     */
    public function destroy(BookList $bookList)
    {
        //
    }

    /**
     * Delete the specified resource from storage.
     *
     * @param  \App\Models\BookList  $bookList
     * @return \Illuminate\Http\Response
     */
    public function delete(Request $request)
    {
        $book = BookList::find($request->id);

        if(file_exists(public_path($book->image))) {
            unlink(public_path($book->image));
        }
        $book->delete();
        return response()->json('deleted Done', 200);
    }

    /**
     * DeleteMulti Action the specified resource from storage.
     *
     * @param  \App\Models\BookList  $bookList
     * @return \Illuminate\Http\Response
     */
    public function delete_multi(Request $request)
    {
        foreach ($request->ids as $id) {
            $book = BookList::find($id);
            if(file_exists(public_path($book->image))) {
                unlink(public_path($book->image));
            }
            $book->delete();
        }

        // BookList::whereIn('id', $request->ids)->delete();
        return response()->json('deleted Done', 200);
    }

    public function book_list_for_select2()
    {
        $books = BookList::orderBy('name','ASC')->select('id','name')->get();
        return response()->json($books,200);
    }
}
