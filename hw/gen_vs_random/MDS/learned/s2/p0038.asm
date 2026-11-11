.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
and cl, 79
or bl, -54
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and cl, -6
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
xor rdi, -9
xor al, cl
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and dil, 125
or dl, bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
test al, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
