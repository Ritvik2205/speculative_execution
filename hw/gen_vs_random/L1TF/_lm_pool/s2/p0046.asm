.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 41
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
cmovp bx, ax
lea eax, qword ptr [rbx]
cmovnp bx, ax
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
add bl, -113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
cmp dl, -93
and rdi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdi]
and rax, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
