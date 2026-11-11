.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdi]
or si, 64
adc ecx, 94
cdq
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], di
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -63
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 78
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], edi
setns dil
not dil
cdq
movsx eax, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
