.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
xor sil, 64
sbb al, cl
and sil, 37
jmp .bb_0.1
.bb_0.1:
test al, -84
lea rbx, qword ptr [rcx + rbx + 20]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 94
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdx]
lea esi, qword ptr [rcx]
add si, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
