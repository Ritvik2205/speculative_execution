.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -22629
sub al, -1
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
xor al, -119
and cl, -57
cmp al, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], sil
cmovle rdi, rcx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
