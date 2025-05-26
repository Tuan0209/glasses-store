import { createAsyncThunk, createSlice } from '@reduxjs/toolkit';
import { request } from '~/Untils/request';

const categoriesSlice = createSlice({
    name: 'categories',
    initialState: {
        categories: [],
        error: false,
    },
    reducers: {
        getCategories: (state, action) => {
            state.categories = action.payload;
            state.error = false;
        },
        getCategoriesFails: (state) => {
            state.categories = null;
            state.error = true;
        },
    },
    extraReducers: (builder) => {
        builder.addCase(fetchCategories.fulfilled, (state, action) => {
            state.categories = action.payload;
        });
    },
});

export const fetchCategories = createAsyncThunk('fetchCategories', async () => {
    const res = await request.get('categories');
    return res.data.content;
});

export default categoriesSlice;
export const { getCategories, getCategoriesFails } = categoriesSlice.actions;
