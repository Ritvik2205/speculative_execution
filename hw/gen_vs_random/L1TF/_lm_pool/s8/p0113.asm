.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
sbb ebx, -116
sbb bl, al
and rax, -109
or al, -2
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb sil, cl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
