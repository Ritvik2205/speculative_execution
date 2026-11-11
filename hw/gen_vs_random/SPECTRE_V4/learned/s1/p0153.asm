.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sbb dl, bl
sub eax, -523763262
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
inc esi
test dl, dl
cmovs ebx, eax
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
bt eax, 84
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
adc ax, ax
cmovnl ebx, eax
cmp al, 19
cmp al, 81
movzx eax, ax
cmovnz ebx, ecx
add bl, bl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmp sil, 88
and dl, al
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 92
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
btc rbx, rax
and rbx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rbx]
cmp sil, 88
cmovnb esi, ebx
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
movzx rax, bl
imul rdi, rsi, 57
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
and bl, dl
test bl, 24
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
xchg dl, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
imul cl
or al, 95
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
test rax, -331426050
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
