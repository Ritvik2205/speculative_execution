.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
test sil, 29
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rcx]
adc sil, 66
sbb bl, dl
jmp .bb_0.2
.bb_0.2:
add sil, -61
xor ax, 30996
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], dx
jmp .bb_0.3
.bb_0.3:
lea di, qword ptr [rbx + rdi + 89]
lea rcx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
