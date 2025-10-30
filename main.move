module 0x17d231e9d4706a5b5486e0ff8de723152300be7c9b60a481089e33c0558f3e83::HelloWorld {

    use std::string;
    use std::signer;

    struct Message has key {
        value: string::String,
    }

    public entry fun init(account: &signer, initial_message: string::String) {
        move_to(account, Message { value: initial_message });
    }

    public entry fun update_message(account: &signer, new_message: string::String) acquires Message {
        let msg_ref = borrow_global_mut<Message>(signer::address_of(account));
        msg_ref.value = new_message;
    }

    public fun get_message(addr: address): string::String acquires Message {
        let msg_ref = borrow_global<Message>(addr);
        msg_ref.value
    }
}
