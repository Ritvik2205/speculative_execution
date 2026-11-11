.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
test sil, -96
test bl, -114
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
or dx, 0b1000000000000000 # instrumentation
bsf di, dx
and cl, -19
and rsi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rsi]
test dl, dl
cmovle edi, esi
jmp .bb_0.1
.bb_0.1:
and al, 39 # instrumentation
cmovbe si, bx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -12
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rsi
and rbx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rbx]
or bl, bl
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rcx, rsi
btc si, 99
and dl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
