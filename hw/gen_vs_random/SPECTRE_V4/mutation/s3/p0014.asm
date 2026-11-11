.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, 1097504565
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
adc eax, -983562873
sbb eax, 426996540
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
cmp dl, 45
movsx edi, al
cmovl edx, esi
mov eax, eax
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
or rdi, 43
xor dx, -43
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
add dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
add al, al
sub rax, 1914398062
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
sbb di, -105
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
and dl, -104
sbb dl, bl
add dl, 109
adc dl, bl
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi]
sub esi, edi
sub rcx, -74
btc edi, ecx
cmovnb eax, edi
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
cmovo ebx, eax
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
or bl, cl
add cl, -9
add rdx, rsi
sbb cx, -114
add bl, bl
btr rdi, 61
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 4
cmp si, 109
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], -20642
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
