.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
add rax, 6
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
jle .bb_0.3
jmp .bb_0.4
.bb_0.3:
sbb rax, 342397759
jmp .bb_0.4
.bb_0.4:
test bl, -8
xor dl, 71
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
