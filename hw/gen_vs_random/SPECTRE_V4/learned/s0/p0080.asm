.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, -13169
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, 23131
test ax, 23760
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sbb bl, al
movsx eax, sil
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
sub bl, 17
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
sub rax, -701741274
movsx ecx, ax
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
cmovns ebx, ebx
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
cmovo rcx, rcx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
sub al, 99
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
cmovnle eax, edx
btc ebx, 94
cmp al, bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
bts edi, 167
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
imul rdi
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add rcx, rsi
add rdi, rsi
sub rdx, 22
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
sub al, 119
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
sub dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
