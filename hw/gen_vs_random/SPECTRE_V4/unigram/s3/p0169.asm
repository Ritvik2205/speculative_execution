.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg al
add dl, 91 # instrumentation
adc dl, al
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
or esi, 32
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 28
cmovnle rbx, rdx
adc al, bl
imul dil
sub edx, 73
xchg ebx, ebx
and rbx, 87
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
sub dil, sil
bt rdx, rsi
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
adc al, bl
cmp cl, 107
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rdi, rbx
btr rcx, 134
add dl, 81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
cmovl rsi, rdi
cmovs rax, rdx
and dl, bl
movzx edi, al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 4
and rdi, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdi]
not rbx
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 63
add edi, 43
cmp sil, bl
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], ax
cmp dl, 83
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 53
xor al, al
inc cx
test al, dl
cmp bl, al
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, -106 # instrumentation
cmovno rdx, rdi
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], -31
and sil, -84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
