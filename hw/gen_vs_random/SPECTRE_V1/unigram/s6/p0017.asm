.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi]
cmovno rsi, rsi
cmovnbe si, cx
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
xchg ecx, eax
and dl, -111
sbb sil, bl
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and dl, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
