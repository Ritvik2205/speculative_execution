.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc eax, eax
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
imul rbx
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
neg cl
and rdi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, -6
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
add dil, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
