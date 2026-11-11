.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
setnb sil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
not eax
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
xor bl, dl
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
or ax, -114
lea dx, qword ptr [rbx + rdx + 56387]
sbb al, dl
adc edx, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
