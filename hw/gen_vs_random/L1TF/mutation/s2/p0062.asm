.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
cwde
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
xor cl, al
setnbe bl
adc bl, dl
and dl, -86
cdq
movzx esi, dl
cmp eax, 123533400
cmovbe edi, eax
and rax, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
xchg rsi, rdx
and rdx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add cl, dl
sub al, dl
sub dl, -78
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
