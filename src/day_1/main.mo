import Array "mo:base/Array";
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
    
    // public func selection_sort(n: Nat) : async Nat {
        
    // };

};
