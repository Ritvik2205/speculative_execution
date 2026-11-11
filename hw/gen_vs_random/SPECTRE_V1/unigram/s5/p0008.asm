.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
mov bl, al
and rdx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdx]
cmovnle rdx, rcx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
imul al
lea rdx, qword ptr [rdx + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and cl, -57
test dx, 28
sbb al, dl
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
adc bl, -73
xor rbx, rdi
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
