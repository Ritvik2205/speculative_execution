.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
mov cl, dil
sbb si, 51
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdx]
neg cl
not al
and rdx, 88
xor cl, 89
lea ax, qword ptr [rbx + rcx + 76]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -13
and rdi, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 59
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
imul rcx
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
