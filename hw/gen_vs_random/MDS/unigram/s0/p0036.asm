.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
or sil, -49
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 5
or dil, -41
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], eax
test bx, 25542
and rax, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
btr dx, 47
xor bx, 34
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 83
bts cx, 191
xor bl, -88
or rsi, 40
xor si, 91
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
