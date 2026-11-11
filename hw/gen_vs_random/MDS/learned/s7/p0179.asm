.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and bl, dil
and sil, sil
xor cl, bl
test sil, bl
or rax, 1020005579
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
test eax, -571234566
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
