.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
sbb al, -4
sub al, dl
jmp .bb_0.1
.bb_0.1:
test bl, 12
or cl, -78
lea eax, qword ptr [rdx]
and al, al
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
