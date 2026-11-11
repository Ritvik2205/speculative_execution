.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
mov esi, eax
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
and edx, -62
and rdx, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx]
sub rdi, rdi
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], dx
cmovl si, cx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, 35
mov bl, cl
setnl al
movzx eax, si
add rbx, 49
sbb bl, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
