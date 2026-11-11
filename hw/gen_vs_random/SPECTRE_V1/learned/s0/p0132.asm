.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
add bl, al
mov al, -28
add dl, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
cmp rdx, -19
lea dx, qword ptr [rbx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
