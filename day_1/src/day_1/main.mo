import Array "mo:base/Array";
import Iter "mo:base/Iter";
import Nat "mo:base/Nat";


actor {
    var counter: Nat = 0;
    public query func add(n:Nat, m:Nat) : async Nat {
        n + m 
    };

    public query func square(n:Nat, m:Nat) : async Nat {
        n * m 
    };

    public query func days_to_second(days: Nat) : async Nat {
        days * 24 * 60 * 60
    };
    
    public func increment_counter(n: Nat) : async Nat {
        counter := counter + n;
        return counter;
    };

    public func clear_counter(n: Nat) : async () {
        counter := 0;
    };

    public func divide(n:Nat, m:Nat) : async Bool {
        if (n > 0) {
            return  true;
        }
        else {
            return false;
        };
    };

    public func is_even(n: Nat) : async Bool {
        if ((n % 2) == 0) {
            return  true;
        }
        else {
            return false;
        };
    };

    public func sum_of_array(arr: [Nat]) : async Nat {
        var sum: Nat = 0;
        for (i in arr.vals()) { 
            sum := sum + i;
        };
        return sum;
    };

    public query func maximum(arr: [Nat]) : async Nat {
        var max: Nat = 0;
        for (i in arr.vals()) { 
            if(i > max ) {
                max := i;
            }
        };
        max
    };

    public func remove_from_array(arr: [Nat], n: Nat) : async [Nat] {
        func eq(ele: Nat): Bool {
            return Nat.notEqual(ele, n);
        };
        return Array.filter<Nat>(arr, eq);
    };
    
    public func selection_sort(arr: [Nat]) : async [Nat] {
        if (arr.size() <= 1) {
            return arr;
        };
        var arr_mut: [var Nat] = Array.thaw(arr);
        let size1: Nat = arr.size() - 1;
        let size2: Nat = arr.size() - 2;
        for (i in Iter.range(0, size2)) {
            var min_val = arr_mut[i];
            var minIndex = i;
            for (j in Iter.range(i+1, size1)) {
                if (arr_mut[j] < min_val) {
                    min_val:=arr_mut[j];
                    minIndex:=j;
                };
            };
            if (minIndex != i) {
                arr_mut[minIndex]:=arr_mut[i];
                arr_mut[i]:=min_val;
            };
        };
        return Array.freeze(arr_mut);
    };

};
