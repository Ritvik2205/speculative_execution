.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, si
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
mov al, al
xchg edx, eax
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rdx
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
bt di, 45
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -8
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
add cl, 62 # instrumentation
cmovnz cx, cx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
cmp rdx, rsi
mov rbx, rdi
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dl
mov cl, bl
inc edx
cmovz eax, esi
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
cmovbe edi, ebx
xor dil, 117
or bl, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
xor ax, 45
mov dl, 81
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and dl, 24
and di, si
adc rdx, -90
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], cx
test sil, bl
cmovnb si, si
adc cl, -86
cmovl ebx, esi
xchg sil, dl
add bl, -2 # instrumentation
cmovs rbx, rdi
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 83
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
btr rsi, rdx
or ebx, -78
cmovle ax, ax
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
