.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 6
test cl, 43
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
or dx, 55
cmovb si, dx
jle .bb_0.2
jmp .exit_0
.bb_0.2:
cmovs di, ax
cmp al, 27
and dil, -22
adc cl, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
