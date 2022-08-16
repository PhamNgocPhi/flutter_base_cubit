import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jig_racing/core/data/data.dart';

part 'base_data_state.freezed.dart';

@freezed
class BaseDataState<T> with _$BaseDataState {
  /// state to show inside-screen loading
  const factory BaseDataState.initialLoadingState() = InitialLoadingState;

  /// state to show dialog loading
  const factory BaseDataState.loadingState() = LoadingState;

  const factory BaseDataState.successState({
    T? data,
  }) = SuccessState;

  const factory BaseDataState.errorState({
    required CommonFailure failure,
  }) = ErrorState;
}
