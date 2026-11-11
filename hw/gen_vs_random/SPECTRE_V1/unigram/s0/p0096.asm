.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 72 # instrumentation
cmovns dx, di
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
cmovno rax, rdi
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -110
sub dx, -23
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, 107
lea ecx, qword ptr [rdi + rdi + 4]
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
neg dl
add bl, 112 # instrumentation
adc bl, dil
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
and dx, 63
lea si, qword ptr [rdi + rdi + 1]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
