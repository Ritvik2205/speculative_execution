.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
xor dl, 19
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
sbb al, dil
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
xor cl, al
lea rax, qword ptr [rsi + rdx]
test al, al
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
