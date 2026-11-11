.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
adc cl, bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 53
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
or rdi, 68
setns dl
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax]
add eax, -1174744897
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
