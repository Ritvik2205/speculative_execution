.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
xor al, dil
inc rax
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
lea rax, qword ptr [rbx + rsi + 41]
sbb ecx, 47
and al, 33
sbb dl, dil
or rsi, -14
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
