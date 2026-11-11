.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 49
sbb dl, al
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
sub cl, sil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
