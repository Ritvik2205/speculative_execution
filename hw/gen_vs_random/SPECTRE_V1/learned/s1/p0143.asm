.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -72548874
mov dl, bl
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
xchg dil, cl
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
xchg al, cl
cmp sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
