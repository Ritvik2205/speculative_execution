.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
setno dil
test dl, -7
mov cl, bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add eax, -1174744897
lea ax, qword ptr [rcx + rsi]
and rsi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rsi]
cmovnle si, dx
or dl, 41
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 63
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], edx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
