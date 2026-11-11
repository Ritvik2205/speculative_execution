.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
cmovl dx, bx
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
or rcx, 39
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 81
imul rdx, rbx
add cl, -87 # instrumentation
cmovnle rsi, rcx
and rsi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
cmovno cx, cx
adc dl, -12
jmp .bb_0.1
.bb_0.1:
cmovz bx, ax
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rsi
bts eax, 232
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
