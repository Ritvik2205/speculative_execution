.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, cl
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
xor al, -119
test al, 84
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
