module exampleAddress::transfer {

    use supra_framework::supra_coin;
    use supra_framework::coin;

    public entry fun two_by_two(
        first: &signer,
        amount_first: u64,
        dst_first: address,
        dst_second: address,
    ) {
        coin::transfer<supra_coin::SupraCoin>(first, dst_first,amount_first);
        coin::transfer<supra_coin::SupraCoin>(first,dst_second, amount_first);

    }


    public entry fun transfer(
        sender: &signer,
        amount: u64,
        reciever: address,
    ) {
        let coin = coin::withdraw<supra_coin::SupraCoin>(sender, amount);
        coin::deposit(reciever, coin);
    }

}

module exampleAddress::transfer2 {

    use supra_framework::supra_coin;
    use supra_framework::coin;

    public entry fun two_by_two(
        first: &signer,
        amount_first: u64,
        dst_first: address,
        dst_second: address,
    ) {
        coin::transfer<supra_coin::SupraCoin>(first, dst_first,amount_first);
        coin::transfer<supra_coin::SupraCoin>(first,dst_second, amount_first);

    }


    public entry fun transfer(
        sender: &signer,
        amount: u64,
        reciever: address,
    ) {
        let coin = coin::withdraw<supra_coin::SupraCoin>(sender, amount);
        coin::deposit(reciever, coin);
    }

}