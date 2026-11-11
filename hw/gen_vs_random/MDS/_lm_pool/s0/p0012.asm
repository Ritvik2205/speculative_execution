.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, bx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor ebx, 25
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
xor al, 122
test dil, sil
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 30
test sil, dil
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
xor rdx, -59
or al, dl
and ax, 5001
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
not al
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
xor sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
