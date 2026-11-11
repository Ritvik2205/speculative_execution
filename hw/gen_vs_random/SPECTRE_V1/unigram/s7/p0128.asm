.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ecx
lea rsi, qword ptr [rax + rsi + 19]
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
xor al, dil
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
test rsi, -1408527332
add bl, -5 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
lea esi, qword ptr [rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
bt esi, edi
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
sub dl, 96
lea rdi, qword ptr [rcx + rsi + 17]
lea rax, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
