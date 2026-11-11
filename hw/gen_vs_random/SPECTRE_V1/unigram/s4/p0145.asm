.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnp bl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
cmovle rsi, rcx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
add sil, 107 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
test bl, -8
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
cmp sil, bl
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
btc bx, cx
lea rdx, qword ptr [rbx + rdi + 32]
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
lea ax, qword ptr [rsi + rdx + 87]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
