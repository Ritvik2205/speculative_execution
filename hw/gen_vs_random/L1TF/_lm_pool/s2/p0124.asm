.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -104 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and bl, bl
xor al, 16
inc rcx
jmp .bb_0.1
.bb_0.1:
and dil, dil
jmp .bb_0.2
.bb_0.2:
cmp ax, 7046
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
sbb esi, 11
and si, 6
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
