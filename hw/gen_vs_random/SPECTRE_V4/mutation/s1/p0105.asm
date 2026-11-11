.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
or edx, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
cmp dx, 58
neg dl
and al, al
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
add ebx, eax
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 127
sub dil, -11
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -8
xchg esi, eax
cmovnz bx, dx
xor rsi, rbx
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdx]
and cl, al
cmovb bx, cx
and rsi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
cmp cx, ax
adc edi, -83
xor al, dl
cmovno rsi, rcx
xor eax, 167244411
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
cmp al, 116
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -16
cmp di, -8
add eax, 1017938146
and rax, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rax]
and bl, -60
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
or dl, al
inc si
or bx, 0b1000000000000000 # instrumentation
bsr dx, bx
cmovb cx, dx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], cx
mov ecx, edx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -60
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], di
movsx eax, dl
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
