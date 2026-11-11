.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, 965442135
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
movzx rdx, dil
xor cl, sil
xor ax, 22976
cmovnz edx, ecx
setnb bl
and rbx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rbx]
cdq
movzx esi, dl
cmp eax, -127
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
