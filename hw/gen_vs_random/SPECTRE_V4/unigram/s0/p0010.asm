.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
cmovnl rbx, rbx
test dil, dl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
sbb dil, dil
and rsi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
or sil, dil
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
add cl, 119 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
bts ecx, 23
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
inc rdx
mov rdx, 38
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
cmovo rdx, rdx
xor sil, dl
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx], 71
cmp dil, al
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle edx, esi
cmovs cx, bx
test di, 78
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
sub dl, sil
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
add sil, 110
and rsi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
adc eax, -1513455903
cmovnbe rcx, rcx
test dl, bl
add al, bl
xor rcx, rdi
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
cmp di, 64
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
