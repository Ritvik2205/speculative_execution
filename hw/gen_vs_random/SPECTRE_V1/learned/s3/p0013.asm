.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
add dl, dl
adc cx, -30
test bl, -8
jmp .bb_0.1
.bb_0.1:
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
xor ebx, 31
btr ax, 89
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
add dil, 72
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
xor al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
