.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -13
test esi, 1857129931
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
xor al, 115
and dl, cl
or rax, 52
or dil, -71
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
xor al, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
xor al, dil
xor sil, -15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
