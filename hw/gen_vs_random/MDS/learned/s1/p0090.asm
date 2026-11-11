.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 359647041
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
xor dil, al
and al, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
xor dl, dil
or bl, cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and cx, -8
test edx, -1561252782
or cx, -42
test al, 66
test cl, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
