.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 8
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
bt cx, ax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
xor cl, 83
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and dil, 125
or dil, -71
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
xor ebx, 82
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and dil, sil
and sil, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
