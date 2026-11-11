.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, 57
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
xchg dx, cx
and si, 68
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and dx, 1
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
sbb cl, dil
add cl, 106 # instrumentation
cmovnp rax, rcx
and al, dl
imul dx
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 90
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 61
neg rbx
and rbx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rbx]
cmovz eax, edi
cmovz edx, esi
xor al, dl
xor dl, 84
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 62
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
cmovs di, cx
movzx eax, al
xor dx, ax
sub rdx, 22
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 60
cmovle ax, ax
add dl, -114 # instrumentation
cmovl cx, di
add al, 56 # instrumentation
cmovle rcx, rax
sub bl, 17
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
not edx
test eax, -818909344
adc rcx, rsi
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
sbb dl, dl
movzx esi, al
cmovnz ebx, ecx
cmovnbe rbx, rax
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
sub rax, -701741274
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], di
btr ax, cx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
cmovle rax, rdx
cmovs bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
