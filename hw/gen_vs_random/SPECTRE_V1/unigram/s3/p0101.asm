.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl edx, ecx
xchg bx, ax
lea rdx, qword ptr [rdx + rcx + 56]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 28
xor sil, sil
cmovbe rsi, rax
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
add sil, -123 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 51
add bl, -42 # instrumentation
lea edi, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
