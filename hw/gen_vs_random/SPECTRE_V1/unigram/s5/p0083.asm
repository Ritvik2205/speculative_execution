.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, bl
adc al, -82
and rdi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
inc ecx
cmovnbe ax, di
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
lea si, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx], 64
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edi
add cl, -127
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
add cl, -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
