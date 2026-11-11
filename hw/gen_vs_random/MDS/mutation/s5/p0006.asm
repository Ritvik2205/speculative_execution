.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
test dl, dl
test sil, -55
test bl, -114
and cl, -6
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
or dx, 0b1000000000000000 # instrumentation
bsf di, dx
and rsi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rsi]
cmovle edi, esi
jmp .bb_0.1
.bb_0.1:
btc si, 99
and rcx, rsi
and al, 39 # instrumentation
cmovbe si, bx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rsi
and rbx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and dl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -12
or bl, bl
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
