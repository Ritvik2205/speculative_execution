.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, rcx
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and cx, -8
and rax, -2039117613
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
xor sil, bl
test dil, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
xor cl, -13
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
or al, 30
xor rax, -1657511731
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
