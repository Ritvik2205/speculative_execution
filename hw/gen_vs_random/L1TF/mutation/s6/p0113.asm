.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
and ebx, 108
sub edi, ebx
setz al
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 86
add dl, 27 # instrumentation
setnle dl
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], -86
cdq
movzx esi, dl
cmp eax, -234754587
cmovbe edi, eax
and rax, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
xchg rsi, rdx
and rdx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
