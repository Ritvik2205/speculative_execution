.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
sub sil, -99
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
sub dl, bl
jmp .bb_0.1
.bb_0.1:
add cl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
bts si, 6
sub al, -97
and rax, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rax]
sbb dl, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
