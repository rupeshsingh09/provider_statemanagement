
// variable cretae krenge 
 
import 'package:flutter_riverpod/legacy.dart';

final searchProvider = StateNotifierProvider<SearchNotifier, SearchState>((ref){
  return SearchNotifier();
});


// class create kr he h
class SearchNotifier extends StateNotifier<SearchState>{
  SearchNotifier() : super(SearchState(search: '', isChanged: false));

void search(String query){
  state = state.copyWith(search: query);
}


  void onChange(bool  isChange){
    state = state.copyWith(isChanged: isChange );
  }
}

// creating class

class SearchState {

   final String search ;
   final bool isChanged ;


   // search state ki help se ek new instatnce ceate ho jata h
   SearchState({required this.search, required this.isChanged});
   // copywith methid
SearchState copyWith({
     String? search, bool ? isChanged
}) {
  return SearchState(search: search ?? this.search,
  isChanged: isChanged ?? this.isChanged
  );
}
}