.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 10 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -7
xchg dil, sil
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 51
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], -80
movzx ecx, sil
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rdx
lea ecx, qword ptr [rdi + rax]
setle dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
bt si, cx
lea rsi, qword ptr [rax + rdi]
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
lea eax, qword ptr [rdi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
