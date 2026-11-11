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
or cl, bl
or eax, 1802312508
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
mov rsi, 66
not ecx
xchg dx, cx
test ax, 23760
dec bl
test ebx, -595096626
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
movsx edi, dx
sub dl, sil
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], sil
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 31
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
cmovnz edx, eax
add rdi, -94
dec bl
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
sbb rax, 183833426
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
xor edi, 74
test eax, 1561062795
and sil, -49
not edi
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
mov rcx, 5862286138240743445
xor cl, al
test ax, -5170
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 61
cmovl rdi, rax
and rbx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rbx]
cmovs rbx, rdi
setnb cl
and esi, 55
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
cmp ax, -906
test sil, 46
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
