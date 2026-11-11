.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 69
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
test bl, 84
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
sub cl, -49
and cl, bl
xor bl, 38
xor dl, 9
cmovb ax, dx
jmp .bb_0.1
.bb_0.1:
xor ax, -24879
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
