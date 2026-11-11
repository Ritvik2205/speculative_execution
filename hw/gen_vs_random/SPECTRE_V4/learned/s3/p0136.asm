.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, -15653
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, -15031
test ax, -5170
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sbb bl, al
and rdi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdi]
cmp dl, 93
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
add sil, 26
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 79
lea rdx, qword ptr [rbx + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rcx]
btr dx, bx
xor al, 29
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
sub ebx, eax
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rbx, 110
adc al, al
cmp ax, -15409
adc bl, dl
btr ecx, edx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
and rcx, -102
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
add dl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
xor di, -43
cmovl rax, rdi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
mov rcx, 5862286138240743445
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 32
sub dl, dl
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
