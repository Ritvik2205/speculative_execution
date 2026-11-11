.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc dx, ax
lea edi, qword ptr [rdx + rbx + 51018]
or al, -5
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
sub al, -47
and rsi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rsi]
neg dl
jmp .bb_0.1
.bb_0.1:
add bl, -113 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
sbb eax, -1165635662
dec edx
xor al, al
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
not sil
test al, cl
jmp .bb_0.2
.bb_0.2:
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
cmp eax, 39856325
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
