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
sub eax, 2
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
inc esi
test dl, dl
cmovs ebx, eax
add ebx, eax
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rbx
sbb ax, -26881
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
or ax, -12775
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
add dl, -76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
sub al, 98
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
add al, al
sub rbx, rsi
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 94
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
and sil, dl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
and sil, dil
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 91
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add bl, -10 # instrumentation
cmovnbe ebx, edi
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
bt rcx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
test al, cl
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
test al, 80
cmovb edx, eax
movsx rdi, ax
mov dl, -34
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
sbb esi, 64
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
