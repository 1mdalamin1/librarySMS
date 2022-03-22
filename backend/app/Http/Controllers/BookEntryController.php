<?php

namespace App\Http\Controllers;

use App\Models\BookEntry;
use App\Http\Requests\StoreBookEntryRequest;
use App\Http\Requests\UpdateBookEntryRequest;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class BookEntryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function list()
    {
        $list = BookEntry::latest()->paginate(10);
        return response()->json($list,200);
    }

    public function user_entries()
    {
        $studentlist = BookEntry::latest()->where('user_id',Auth::user()->id)->paginate(10);
        return response()->json($studentlist,200);
    }

    public function return_book(Request $request)
    {
        BookEntry::where('id',$request->id)->update([
            'book_return' => 1,
            'updated_at' => Carbon::now()->toDateTimeString()
        ]);
        return response()->json('success',200);
    }
    public function getentry(BookEntry $entry)
    {
        return $entry;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        if (count($request->book_ids) > 0) {
            foreach ($request->book_ids as $book_id) {
                BookEntry::insert([
                    'user_id' => $request->user_id,
                    'book_id' => $book_id,
                    'time' => $request->time,
                    'date' => $request->date,
                    'return_date' => $request->return_date,
                    'created_at' => Carbon::now()->toDateTimeString(),
                ]);
            }
            return response()->json('success');
        } else {
            return response()->json('there is no books', 400);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreBookEntryRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreBookEntryRequest $request)
    {
        //
    }



    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\BookEntry  $bookEntry
     * @return \Illuminate\Http\Response
     */
    public function edit(BookEntry $bookEntry)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateBookEntryRequest  $request
     * @param  \App\Models\BookEntry  $bookEntry
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateBookEntryRequest $request, BookEntry $bookEntry)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\BookEntry  $bookEntry
     * @return \Illuminate\Http\Response
     */
    public function destroy(BookEntry $bookEntry)
    {
        //
    }
}
