.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -12492
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
xor cl, 98
test dil, -80
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
xor cl, 83
test sil, cl
or cl, bl
test edx, -1561252782
and sil, al
test rcx, -613256812
and dx, 60
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
