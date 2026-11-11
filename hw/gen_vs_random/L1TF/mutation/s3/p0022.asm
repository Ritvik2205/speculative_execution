.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdx]
cmp eax, -127
add cl, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
cdq
setnbe bl
xchg rsi, rdx
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
movzx esi, dl
adc bl, dl
cmovbe edi, eax
and rax, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and dl, 73
cwde
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
