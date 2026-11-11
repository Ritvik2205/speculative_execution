.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
sub al, 9
lea rax, qword ptr [rbx + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
lea di, qword ptr [rbx]
and bl, bl
sub sil, -99
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 76
sbb al, -4
sbb al, dl
or rsi, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
