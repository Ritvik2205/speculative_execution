.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
cmovl bx, si
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
not rdi
or bl, cl
and cl, sil
bts rsi, rdx
test edi, edx
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
cmovno rbx, rax
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
test dil, -80
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
test ecx, -1843375753
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
btc esi, 199
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
