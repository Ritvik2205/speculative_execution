.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 23633
test dil, sil
or al, 25
xor cl, -13
or sil, -78
and dil, 125
xor dil, -3
btr dx, 47
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
btr ax, di
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
xor bl, cl
or si, -12
not cl
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
