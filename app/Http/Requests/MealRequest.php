<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class MealRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'per_page' => 'sometimes|integer|min:1|max:100', // Ovdje pretpostavljam da je maksimum 100 po stranici
            'page' => 'sometimes|integer|min:1',  //nije ni potrebno jer Laravel paginate metoda automatski rukuje sa paginacijom
            'category' => 'sometimes|nullable',
            'with' => 'sometimes|string',
            'lang' => 'required|in:en,hr,de',
            'diff_time' => 'sometimes|integer|min:1',
            'id' => 'sometimes|integer|exists:meals',
        ];
    }
}
