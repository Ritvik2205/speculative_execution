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
and dl, 73
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
add dl, -108 # instrumentation
cmovnle esi, esi
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
mov dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
add dl, -7 # instrumentation
cwd
cmovnb rax, rsi
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
