.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 91
xor dl, al
or cl, sil
bt di, ax
or bl, bl
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor ax, 23633
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -553694152
or cl, dil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
