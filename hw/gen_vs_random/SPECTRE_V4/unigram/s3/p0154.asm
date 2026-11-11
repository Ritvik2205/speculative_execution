.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, edx
test dl, cl
and rax, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rax]
add cl, 72 # instrumentation
cmovle cx, si
add cl, 62
and rax, 12
movzx si, dl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
sub bl, 17
xor edi, 7
bts ebx, 22
sbb al, 123
cmovle rbx, rdx
xor rbx, rcx
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 48
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 22
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rcx]
sbb bl, sil
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
cmp bx, 13
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edi
cmovp dx, si
add rsi, 31
mov bl, bl
adc bl, al
xchg rbx, rsi
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 93
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
cmp bx, 14
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 54
btc esi, 51
and cl, dl
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 32
or sil, sil
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
xor dil, dl
movzx si, bl
and ax, 35
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 93
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
adc al, cl
and cl, 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
