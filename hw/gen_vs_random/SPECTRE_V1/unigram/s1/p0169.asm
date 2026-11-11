.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 4 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdi
sub cl, -47
xchg ebx, edi
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], -16
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 52
movzx ecx, ax
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and bl, al
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, dil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
bt dx, 87
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
setle cl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
setns dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
