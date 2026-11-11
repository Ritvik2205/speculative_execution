.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -3
xor bl, al
and dl, sil
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
test sil, -96
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
or bl, 100
xor cl, dil
or dil, 16
or al, cl
test dl, bl
xor cl, 83
and rax, 1250429750
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
