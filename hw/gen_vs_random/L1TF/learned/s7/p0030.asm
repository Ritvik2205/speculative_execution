.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 40 # instrumentation
btc rsi, rsi
xor bl, cl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 67
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 7
add bl, 68
jmp .bb_0.1
.bb_0.1:
test al, bl
and ax, 7954
and rbx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
