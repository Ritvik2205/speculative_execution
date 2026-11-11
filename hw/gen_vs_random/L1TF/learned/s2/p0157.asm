.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
cmp rdi, 38
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
sbb eax, -1165635662
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
