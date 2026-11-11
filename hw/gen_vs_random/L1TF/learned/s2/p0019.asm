.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb cl, cl
and dil, bl
xor rax, 20
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 43
and rsi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rsi]
test al, -70
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
dec al
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
