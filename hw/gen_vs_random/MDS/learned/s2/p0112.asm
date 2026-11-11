.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
xor al, dl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
xor cl, 83
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
xor al, bl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
test dl, sil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
bt dx, bx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
or bl, dil
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor ax, -5889
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
xor bl, -102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
