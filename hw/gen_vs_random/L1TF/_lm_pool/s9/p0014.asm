.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, 113
sbb sil, cl
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi]
cmp al, 27
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
dec ebx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rax]
xor sil, bl
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 23
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
