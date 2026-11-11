.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
or dil, sil
and bl, 68
xor cl, 15
or bl, cl
or sil, -49
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
xor cl, bl
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rsi
jmp .bb_0.1
.bb_0.1:
test al, sil
or bl, dil
and sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
