.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
sbb dil, 9
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
setb bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add al, -102
sbb edx, 23
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
