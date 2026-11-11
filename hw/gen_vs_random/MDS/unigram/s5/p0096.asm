.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 95
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], esi
btr rax, 209
test bl, -14
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], cx
test dl, dl
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rdx
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
and al, -83 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
cmovle edx, ebx
test dl, -95
bt ebx, 26
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
