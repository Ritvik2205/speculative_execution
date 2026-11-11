.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -19
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
test di, dx
xor cl, dil
xor cl, 83
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
test al, 91
xor dl, al
bt bx, ax
and bl, cl
xor al, 9
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and dil, cl
test rax, -2052112368
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
