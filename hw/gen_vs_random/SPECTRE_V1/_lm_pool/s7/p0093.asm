.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], ax
cmp esi, 54
sub dil, -111
lea eax, qword ptr [rsi + rsi + 72]
test cl, -24
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub di, 84
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
jb .bb_0.2
jmp .exit_0
.bb_0.2:
adc al, bl
lea di, qword ptr [rdx + rax]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
