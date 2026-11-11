.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rsi, rdx
and dl, 32
cmovbe edi, eax
cmp eax, 123533400
add cl, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
cwde
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rax]
cdq
and rdx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdx]
movzx esi, dl
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
adc bl, dl
xor cl, al
setnbe bl
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
