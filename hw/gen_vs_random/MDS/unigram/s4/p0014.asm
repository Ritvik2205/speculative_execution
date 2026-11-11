.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
cmovb eax, edi
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
test dl, bl
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
and al, -83 # instrumentation
cmovnp rsi, rdx
xor cl, dl
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
xor cl, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and dl, 84 # instrumentation
cmovle di, ax
test dl, bl
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 112
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
