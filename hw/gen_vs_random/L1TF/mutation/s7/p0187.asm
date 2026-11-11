.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
movzx esi, dl
add cl, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
cmovbe edi, eax
cwde
cdq
and rdx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdx]
xor cl, al
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
adc bl, dl
setnbe bl
and rax, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rax]
and dl, 73
xchg rsi, rdx
cmp eax, 123533400
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
