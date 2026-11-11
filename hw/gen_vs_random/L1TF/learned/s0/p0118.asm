.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 82
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
btr dx, ax
jmp .bb_0.1
.bb_0.1:
test al, -104
add sil, bl
and rbx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
add dl, cl
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
adc dil, 120
adc al, -6
cmp al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
