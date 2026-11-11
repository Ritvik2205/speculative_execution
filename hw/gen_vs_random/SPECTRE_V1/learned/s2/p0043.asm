.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 21910
lea bx, qword ptr [rcx]
sub al, sil
mov dl, sil
test dil, -116
neg al
cmp al, bl
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
and cl, -57
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
