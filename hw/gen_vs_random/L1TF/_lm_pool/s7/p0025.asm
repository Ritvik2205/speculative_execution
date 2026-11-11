.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
test al, -56
test bl, 84
lea ecx, qword ptr [rdx]
and al, -68
lea rax, qword ptr [rcx + rdx + 93]
sbb al, -4
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
jmp .bb_0.1
.bb_0.1:
and edx, 52
lea eax, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
