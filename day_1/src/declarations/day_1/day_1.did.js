export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'add' : IDL.Func([IDL.Nat, IDL.Nat], [IDL.Nat], ['query']),
    'clear_counter' : IDL.Func([IDL.Nat], [], []),
    'days_to_second' : IDL.Func([IDL.Nat], [IDL.Nat], ['query']),
    'divide' : IDL.Func([IDL.Nat, IDL.Nat], [IDL.Bool], []),
    'increment_counter' : IDL.Func([IDL.Nat], [IDL.Nat], []),
    'is_even' : IDL.Func([IDL.Nat], [IDL.Bool], []),
    'maximum' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Nat], ['query']),
    'remove_from_array' : IDL.Func(
        [IDL.Vec(IDL.Nat), IDL.Nat],
        [IDL.Vec(IDL.Nat)],
        [],
      ),
    'square' : IDL.Func([IDL.Nat, IDL.Nat], [IDL.Nat], ['query']),
    'sum_of_array' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Nat], []),
  });
};
export const init = ({ IDL }) => { return []; };
