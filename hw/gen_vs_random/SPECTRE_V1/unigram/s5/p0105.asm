.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
add eax, -55403434
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 22
add cl, 112 # instrumentation
sbb edx, 99
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
setnp cl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
add dil, -55 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
setns dl
sbb dl, dil
mov edi, eax
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
bt ax, ax
and ebx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
