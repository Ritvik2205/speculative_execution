.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -12492
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 29
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
xor sil, 27
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
xor al, cl
or cl, 39
or al, dil
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
