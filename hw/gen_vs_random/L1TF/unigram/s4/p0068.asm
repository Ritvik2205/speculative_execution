.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 61
test ecx, 38
cmp dil, 87
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rdx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 101
lea rax, qword ptr [rcx]
lea bx, qword ptr [rbx + rbx + 23]
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
neg ebx
not bl
sbb dil, sil
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
