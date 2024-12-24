#include <eosio/crypto.h>
#include <stddef.h>

void test_crypto( void ) {
   assert_sha256( NULL, 0, NULL );
   assert_sha1( NULL, 0, NULL );
   assert_sha512( NULL, 0, NULL );
   assert_ripemd160( NULL, 0, NULL );
   sha256( NULL, 0 , NULL );
   sha1( NULL, 0, NULL );
   sha512( NULL, 0, NULL );
   ripemd160( NULL, 0, NULL );
   verify_rsa_sha256_sig( NULL, 0, NULL, 0, NULL, 0, NULL, 0);
   recover_key( NULL, NULL, 0, NULL, 0 );
   assert_recover_key( NULL, NULL, 0, NULL, 0 );
}
