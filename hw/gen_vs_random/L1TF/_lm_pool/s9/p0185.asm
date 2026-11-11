.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
add al, 74
and rdi, rbx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
jmp .bb_0.1
.bb_0.1:
or al, dil
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
or al, sil
bt di, cx
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
