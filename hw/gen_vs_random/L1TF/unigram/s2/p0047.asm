.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
or ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
or esi, edi
sub dx, 34
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
adc al, bl
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
and dl, -86
or edi, edx
sbb di, 80
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edi
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
