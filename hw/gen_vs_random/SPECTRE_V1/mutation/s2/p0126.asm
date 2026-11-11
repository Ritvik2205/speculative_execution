.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -19
add al, -125 # instrumentation
cmovb edx, ecx
and rax, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
lea esi, qword ptr [rdi + rax + 42536]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
btc rbx, 195
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 89
lea rbx, qword ptr [rdx]
add cl, -94 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 106
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
