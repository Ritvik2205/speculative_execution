.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
test bl, -8
test dil, -116
mul rcx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 100
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
cmp cl, bl
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and dl, -111
or rdx, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
