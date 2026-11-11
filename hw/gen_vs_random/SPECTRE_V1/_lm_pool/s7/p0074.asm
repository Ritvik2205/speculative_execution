.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
test sil, 47
sub al, dl
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
test bl, -8
xor bl, dl
lea ax, qword ptr [rbx + rdx]
mov cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
