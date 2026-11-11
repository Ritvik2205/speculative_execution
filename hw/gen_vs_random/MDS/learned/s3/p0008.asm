.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
jmp .bb_0.1
.bb_0.1:
or al, 74
xor al, bl
test bl, -114
or al, 74
and ax, 19740
and dl, -73
xor cx, -18
jmp .bb_0.2
.bb_0.2:
xor cl, dil
xor dil, -70
xor rdi, -9
xor cl, 15
or al, -78
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and rdx, 24
bt ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
