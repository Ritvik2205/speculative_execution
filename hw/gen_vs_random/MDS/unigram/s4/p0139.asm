.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rsi, rdx
or dl, dl
not edi
cmovnbe bx, dx
and dl, dl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and dl, 59 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
btc rax, 106
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and cl, 51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdi]
test sil, sil
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
xor rdi, -9
xor al, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
