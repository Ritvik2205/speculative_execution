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
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
setnle dl
cmovns bx, bx
xor edi, 95
sub dl, cl
sub ebx, esi
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
cwd
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
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
movzx edx, al
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
cmp bl, cl
cmovnl rbx, rsi
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 99
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
cmovb rdx, rbx
imul ebx, esi
mov cl, cl
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
add al, 118
bts ecx, ebx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
not di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
