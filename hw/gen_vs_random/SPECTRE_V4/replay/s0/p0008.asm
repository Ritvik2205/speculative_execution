.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
movsx eax, dl
and rax, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdx]
xor rsi, rbx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -16
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
cmp di, -8
add ebx, eax
and al, al
xchg esi, eax
cmovb cx, dx
cmovno rsi, rcx
adc edi, -83
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rsi]
and bl, -60
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
xor al, dl
inc si
cmovnz bx, dx
xor eax, 550678097
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], cx
and cl, al
cmp dx, 58
or bx, 0b1000000000000000 # instrumentation
bsr dx, bx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -8
or dl, al
add eax, 544045319
cmp cx, ax
cmp al, 115
sub dil, -40
mov ecx, edx
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], di
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 127
neg dl
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
cmovb bx, cx
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
