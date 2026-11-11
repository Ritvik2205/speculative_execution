.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ebx
jmp .bb_0.1
.bb_0.1:
sub sil, -99
btr si, ax
and al, -68
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rbx]
and al, -68
and sil, sil
sbb edx, 23
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
