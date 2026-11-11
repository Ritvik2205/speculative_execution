.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
test al, sil
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test bl, dl
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 11
and ebx, 92
and rax, 41
xor rdx, -59
xor cl, 24
test dil, al
and dil, 125
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 19
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and bl, cl
cmovnp rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
