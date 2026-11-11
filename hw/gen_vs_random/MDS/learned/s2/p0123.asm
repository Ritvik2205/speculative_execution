.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -4
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
jmp .bb_0.2
.bb_0.2:
test rcx, -613256812
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and bl, 68
test esi, 425331143
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
test cl, dil
or cx, 39
xor si, 91
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
test al, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
