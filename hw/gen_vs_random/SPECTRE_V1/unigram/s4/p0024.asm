.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
lea edx, qword ptr [rdx]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edi
cwd
inc rbx
lea dx, qword ptr [rdx + rax]
or edx, 27
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
cmp al, 46
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 76
xor esi, ecx
adc cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
