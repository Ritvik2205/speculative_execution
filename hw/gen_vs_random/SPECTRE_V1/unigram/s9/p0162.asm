.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 20
and rdi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdi], 22
imul rcx
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
add dil, 72
or esi, -74
lea rcx, qword ptr [rbx + rcx + 45597]
add cl, 16 # instrumentation
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 95
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 98
mov cl, -72
movzx edi, di
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
sub rdx, rdi
and rdi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
