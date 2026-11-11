.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdx]
and cl, 40
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
lea di, qword ptr [rsi + rbx + 7]
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
xor dx, 23
sub al, -97
and cl, 15
jmp .bb_0.2
.bb_0.2:
or sil, dil
or bx, 0b1000000000000000 # instrumentation
bsf cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
