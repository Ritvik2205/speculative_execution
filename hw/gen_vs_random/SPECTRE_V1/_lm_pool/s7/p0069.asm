.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
cmp ecx, 86
cmp al, dl
lea rax, qword ptr [rdx + rax]
sub cl, dl
sub al, sil
sbb eax, 1392087754
cmp ebx, -33
test bl, -8
sub cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
