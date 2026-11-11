.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 88
sub dil, dl
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
xchg ecx, edx
sbb dil, sil
xor edx, 39
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], bx
or rcx, 95
lea rax, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
