.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], -55
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor al, al
cmovnle rbx, rdx
jnbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
jns .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rax, -175411684
sbb al, cl
jmp .bb_0.4
.bb_0.4:
test dl, -36
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
neg rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
