.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 26
sbb ax, -19255
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
imul rbx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 65
cmovnbe rax, rcx
sbb al, al
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rcx
add dl, dl
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 77
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
add al, 110 # instrumentation
movsx si, al
mul ax
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi], 19
inc al
mul rbx
cmovb rsi, rcx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
sub ecx, edi
add cl, -117 # instrumentation
cmovs rdi, rax
imul rbx
cmp bl, 13
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb di, ax
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmovz rax, rbx
sub sil, -50
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
test edx, 573099753
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rax]
sbb sil, 108
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax]
not esi
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
