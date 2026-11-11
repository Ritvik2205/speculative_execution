.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, ebx
sub dl, 71
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
and al, dl
sub al, cl
sub bl, -19
sub bl, al
test al, -71
sbb dil, -106
sbb ecx, 87
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
