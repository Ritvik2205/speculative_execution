.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
lea rax, qword ptr [rdi + rdi]
mov cl, bl
add ax, 6656
sub rax, -1628299544
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
sub sil, -18
cmovnp dx, cx
lea bx, qword ptr [rcx + rbx + 2101]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
