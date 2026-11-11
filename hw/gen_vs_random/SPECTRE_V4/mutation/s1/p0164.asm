.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rax]
inc si
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
and bl, -119
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rsi
cmovno rsi, rcx
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
mov ecx, edx
and cl, al
cmovb bx, cx
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], di
or dl, al
cmp al, -1
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -16
xor al, dl
neg dl
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -112
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
cmovb cx, dx
cmp di, -8
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
cmp dx, -26
and rsi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rsi]
sub dil, -40
xor eax, 167244411
add ebx, eax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
movsx eax, dl
xchg esi, eax
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdx]
add eax, 544045319
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
cmp cx, ax
and al, al
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], cx
or bx, 0b1000000000000000 # instrumentation
bsr dx, bx
adc edi, -83
xor rsi, rbx
or edx, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmovnz bx, dx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
