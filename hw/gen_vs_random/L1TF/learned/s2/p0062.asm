.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ax
add bl, 91
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 7
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
and eax, edx
btc rdi, 243
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], esi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sub ecx, 55
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and cl, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], edx
adc dx, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
