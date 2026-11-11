.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, al
mov ecx, edx
and cl, al
cmovb cx, dx
or edx, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], cx
add ebx, eax
and rax, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rax]
cmp dx, 13
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
cmovnz bx, dx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
inc si
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and al, al
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
neg dl
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
add eax, -105
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 127
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
cmp di, -8
and bl, -119
cmovb bx, cx
or bx, 0b1000000000000000 # instrumentation
bsr dx, bx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -112
adc edi, -83
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], di
cmp cx, ax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rsi
xor eax, 550678097
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdx]
sub dil, 65
xor rsi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -16
xor al, dl
cmovno rsi, rcx
movsx eax, dl
cmp al, -116
xchg esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
