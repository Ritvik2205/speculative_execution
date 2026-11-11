.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb edi, esi
sbb al, -112
or al, 100
sbb dil, -106
test al, -71
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 11
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
add sil, -68
sbb al, bl
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
