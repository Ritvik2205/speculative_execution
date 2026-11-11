.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rsi]
add dl, 100 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
cmovz esi, eax
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
cmp rax, -1102558854
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
bswap edx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
movzx edi, al
cmovnbe cx, si
dec rdx
sub al, 50
or bx, 0b1000000000000000 # instrumentation
bsr ax, bx
add ax, 28666
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
add ebx, 3
cmovnle esi, eax
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rax
add al, 110 # instrumentation
movsx bx, al
add cl, -117 # instrumentation
cmovs rcx, rax
sbb cl, cl
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rbx
add dl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rdx, 70
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add ax, 28666
and dil, dl
add al, 5
xchg dil, dl
dec rsi
sub esi, eax
cmovz eax, ecx
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, eax
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
sbb dl, -99
cmp al, cl
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle esi, ecx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 39
imul rsi
sub rsi, 26
sub bx, di
add sil, -71 # instrumentation
adc sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
