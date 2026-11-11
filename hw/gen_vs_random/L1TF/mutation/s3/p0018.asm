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
and dl, -49
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
jmp .bb_0.1
.bb_0.1:
xchg rbx, rbx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
seto bl
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
add ax, -24961
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
