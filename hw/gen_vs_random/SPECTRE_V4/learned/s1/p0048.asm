.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, -13169
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, -906
test ax, -5170
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sbb bl, al
movsx eax, sil
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
sub bl, 17
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
or cx, 0b1000000000000000 # instrumentation
bsr bx, cx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
add dl, dil
adc dl, al
xchg rcx, rax
cmovns si, si
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
xchg dx, si
inc rsi
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
imul ax, cx, 95
movzx ecx, sil
cmovnbe rax, rbx
or dl, 88
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
lea rsi, qword ptr [rbx + rcx]
movzx ecx, al
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
add sil, 110
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
xchg bl, sil
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
sbb sil, 108
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
add al, 118
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
