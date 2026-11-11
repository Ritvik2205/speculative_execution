.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdx
cmovle rdi, rsi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
or eax, 2007177863
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
xor bl, 93
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
xor al, 29
xchg dx, cx
test ax, -5170
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
xor ax, 28088
or esi, 12
add cl, al
or ax, 0b1000000000000000 # instrumentation
bsr di, ax
add cl, -82 # instrumentation
sbb si, bx
or eax, -1434249782
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add dil, dil
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
xor cl, al
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
cmovnb esi, edi
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
or bl, al
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], ebx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
cmp dl, cl
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
sbb eax, -1688332460
test eax, 1880179600
or dl, 56
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
test dl, 19
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 24
cmovle rdi, rcx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
xor eax, 181978569
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
