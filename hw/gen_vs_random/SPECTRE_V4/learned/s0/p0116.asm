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
adc rdi, 59
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 97
cmovs ebx, eax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and si, di
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
cmp al, -52
xor esi, edi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], di
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
sbb al, -62
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
sbb al, -62
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 78
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and bx, 95
movzx ecx, dil
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 69
and rsi, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add al, 123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
cmovnle rbx, rbx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
or cl, dl
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
add ax, -15653
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
sub dl, dl
sub ecx, esi
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rcx
add eax, -1796699558
bt ebx, 228
sbb dl, bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
