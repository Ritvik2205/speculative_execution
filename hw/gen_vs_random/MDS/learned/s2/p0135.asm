.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 17
test dl, 9
xor cl, 15
xor bl, -61
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and sil, cl
or al, cl
test al, 22
xor rdx, -59
test dil, al
xor cl, 98
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
test rcx, -613256812
test dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
