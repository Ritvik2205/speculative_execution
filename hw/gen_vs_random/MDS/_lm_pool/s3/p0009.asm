.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 80
and ax, 339
and cx, -8
and cl, -71
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
xor di, 93
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
test dil, bl
xor al, sil
and ax, 19740
and bx, 58
and al, bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
