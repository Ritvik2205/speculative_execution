.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
and dil, 98
cmp al, bl
lea rdx, qword ptr [rbx + rdi + 94]
and rsi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
lea rsi, qword ptr [rdx + rcx]
add dl, 21 # instrumentation
adc dx, 15
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, cl
imul ax, dx, 86
bt edx, eax
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 18
test cl, -33
and rbx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
