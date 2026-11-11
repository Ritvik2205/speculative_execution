.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
movzx esi, cx
mov edx, 77
cmovz ebx, esi
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 31
cmovno bx, ax
sbb sil, sil
test bl, 84
setnz sil
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
neg rax
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
